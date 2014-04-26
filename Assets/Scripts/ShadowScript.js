/*
 *	ShadowScript.js
 *
 *	The engine that generates interactive shadows in the game world.
 *
 *	Version 1.0
 *	Coded with <3 by Jonathan Ballands && Wil Collins
 *
 *	(C)2014 All Rights Reserved.
 */

#pragma strict
 
// Variable Settings
var collisionMode				: int 		= 2; 	// 0 = PushPop, 1 = Shadow Blend, 2 = Quicksand
var collisionThreshold 			: float 	= .5;

var shadowTexture 				: Material;			// Stores the texture for the shadow
var reverseTriWinding 			: boolean;			// This prevents the "backfacing" problem
var nearestLight				: Transform;		// Nearest Light gameobject (if one exists) that casts static shadow

var scalingWidthVar 			: float 	= 1.0;			// shadow width scale in respect to gameobject
var scalingHeightVar 			: float 	= 1.0;			// shadow height scale in respect to gameobject
var shadowDepth					: float 	= 1.0;

// Environment settings
private final var WALL_NAME 		: String 	= "BackWall";	// Name identifier for the back wall to calculate objDistanceToWall
private final var SAM_NAME 			: String 	= "Test Sam";	// Name indentifier for the player to calculate distance from obj
private final var HANK_NAME			: String 	= "Test Hank";
private final var SHADOW_OFFSET		: float		= 0.01;			// distance shadow is offset from plane
private final var triggerDistance 	: float 	= 10.0;			// distance at which Shadow Skewing is triggered

// Object properties
private var objWidth 			: float;
private var objHeight 			: float;
private var objDepth 			: float;
private var objOriginX 			: float;
private var objOriginY 			: float;
private var objOriginZ 			: float;
private var objRightX 			: float;
private var objLeftX 			: float;
private var objFloorY 			: float;
private var objBackZ 			: float;
private var objFrontZ 			: float;

private var heightScaleOffset 	: float;			// The height offset produced by scaling
private var objToWallDistance 	: float;			// how far away the GameObject's back edge is from the wall
private var isLifted			: boolean;			// whether or not the object is lifted above eye-level (no need for Hshadow)

// Shadow properties
private var shadowMeshV 		: Mesh;				// mesh for vertical shadow plane
private var shadowMeshH 		: Mesh;				// mesh for horizontal shadow plane
private var shadowV 			: GameObject;		// gameobject for vertical shadow plane
private var shadowH 			: GameObject;		// gameobject for horizontal shadow plane
private var colliderV 			: BoxCollider;
private var isVisible 			: boolean = false;	// whether or not the shadow is currently visible
private var isCastByLight		: boolean = false;

// Environment variables
private var player 				: Transform;		// the player object to detect distance
private var hank 				: GameObject;		// the player object to detect distance
private var player2ObjDistance 				: float;			// player distance from gameobject

/*
 *	Start()
 *
 *	Called as the object gets initialized.
 */
function Start () {
	player = GameObject.Find(SAM_NAME).transform;
	hank = GameObject.Find(HANK_NAME);
	DefineDimensions();
}

function DefineDimensions(){
	if(gameObject.name.Contains("Wallshelf")){
		var combinedBounds : Bounds = getCombinedBounds(gameObject);
		
		objWidth = combinedBounds.size.x;
		objHeight = combinedBounds.size.y;
		objDepth = combinedBounds.size.z;
		
		objOriginX = combinedBounds.center.x;
		objOriginY = combinedBounds.center.y;
		objOriginZ = combinedBounds.center.z;
		
		// var boxCollider : BoxCollider = gameObject.GetComponent("BoxCollider");

		// objWidth = boxCollider.bounds.size.x;
		// objHeight = boxCollider.bounds.size.y;
		// objDepth = boxCollider.bounds.size.z;

		
		// objOriginX = boxCollider.transform.position.x;
		// objOriginY = boxCollider.transform.position.y;
		// objOriginZ = boxCollider.transform.position.z;
	
	}else{
		objWidth = renderer.bounds.size.x;
		objHeight = renderer.bounds.size.y;
		objDepth = renderer.bounds.size.z;
		
		objOriginX = renderer.transform.position.x;
		objOriginY = renderer.transform.position.y;
		objOriginZ = renderer.transform.position.z;
	}
	
	objRightX = objOriginX + (objWidth / 2);
	objLeftX = objOriginX - (objWidth / 2);
	objFloorY = objOriginY - (objHeight / 2) + SHADOW_OFFSET;
	objBackZ = objOriginZ + (objDepth / 2);
	objFrontZ = objOriginZ - (objDepth / 2);
	
	// Do some scaling
	heightScaleOffset = ((objHeight * scalingHeightVar) - objHeight) / 2;
	objWidth = objWidth * scalingWidthVar;
	objHeight = objHeight * scalingWidthVar;	
	
	// Determine if the object is lifted for proper shadow rendering
	if(objOriginY >= player.renderer.bounds.size.y) isLifted = true;
	else isLifted = false;
	
	var wall : GameObject = GameObject.Find(WALL_NAME);
	objToWallDistance = Mathf.Abs(wall.renderer.transform.position.z - objOriginZ - objDepth / 2) - SHADOW_OFFSET;
}
function getCombinedBounds(obj : GameObject){
	var renderer : Renderer = obj.renderer;
	var combinedBounds = renderer.bounds;
	var renderers = obj.GetComponentsInChildren(Renderer);
	for (var render : Renderer in renderers) {
	    if (render != renderer) {
	    	combinedBounds.Encapsulate(render.bounds);
	    }
	}
	return combinedBounds;
}
/*
 *	Update() - Called as the object updates in realtime.
 */
function Update () {
	if (isVisible) {
		VerifyShadow();		// Verify the shadow's location based on its parent object
	}
}
/*
 *	LateUpdate() - Called after objects have finished Update() 
 *
 *	Explicitly skewing the shadow after the player has moved so it doesn't freak out
 */
function LateUpdate() {
	SkewShadow();
}

function CreateShadow() {
	if (!isVisible) {
		isVisible = true;
		ActivateShadow();
	}
}

function RemoveShadow() {
	if (!isCastByLight && isVisible) {
		isVisible = false;
		
		// Remove shadow
		Destroy(shadowV);
		Destroy(shadowH);
		
		// Erase local variables
		shadowMeshV = null;
		shadowMeshH = null;
		shadowV = null;
		shadowH = null;
	}
}

/*
 *	ActivateShadow()
 *
 *	Kicks off the shadow creation process by generating a Mesh
 *	for the shadow to reside on.
 */
function ActivateShadow() {
	CreateVerticalShadow();
	
	// create floor shadow if object is below eye level
	if(!isLifted){	
		CreateHorizontalShadow();
	}	
}
function CreateVerticalShadow(){
// Create vertical wall shadow
	shadowV = new GameObject(gameObject.name + "_Shadow_V", MeshRenderer, MeshFilter, MeshCollider);
	shadowV.tag = "Shadow";
	
	colliderV = shadowV.AddComponent("BoxCollider");
	colliderV.size = Vector3(objWidth, objHeight, shadowDepth);
	colliderV.center = Vector3(objRightX - objWidth/2, objFloorY + objHeight/2, objBackZ + objToWallDistance);
	
	shadowMeshV = new Mesh();	// Make a new shadow mesh
	shadowMeshV.name = gameObject.name + "_Shadow_Mesh_V";
	shadowMeshV.vertices = [Vector3(objRightX, objFloorY + heightScaleOffset, objBackZ + objToWallDistance),
					   Vector3(objRightX - objWidth, objFloorY + heightScaleOffset, objBackZ + objToWallDistance),
					   Vector3(objRightX - objWidth, objFloorY + objHeight + heightScaleOffset, objBackZ + objToWallDistance),
					   Vector3(objRightX, objFloorY + objHeight + heightScaleOffset, objBackZ + objToWallDistance)];	
			   
	// Define triangles
	if (reverseTriWinding) {
		shadowMeshV.triangles = [0, 1, 2, 0, 2, 3];
	}
	else {
		shadowMeshV.triangles = [2, 1, 0, 3, 2, 0];
	}
	
	shadowMeshV.RecalculateNormals();	// Define normals
	shadowMeshV.uv = [Vector2 (0, 0), Vector2 (0, 1), Vector2(1, 1), Vector2 (1, 0)];	// Define UVs
	
	// Add a collider to the shadow so that Hank can touch it
	var meshColliderV : MeshCollider = shadowV.GetComponent("MeshCollider");
	meshColliderV.sharedMesh = shadowMeshV;
	shadowV.renderer.material = shadowTexture;
		
	var meshFilterVert : MeshFilter = shadowV.GetComponent("MeshFilter");
	meshFilterVert.sharedMesh = shadowMeshV;
}
function CreateHorizontalShadow(){
	shadowH = new GameObject(gameObject.name + "_Shadow_H", MeshRenderer, MeshFilter, MeshCollider);
	shadowH.tag = "Shadow";
	
	shadowMeshH = new Mesh();	// Make a new shadow mesh
	shadowMeshH.name = gameObject.name + "_Shadow_Mesh_H";
	shadowMeshH.vertices = [Vector3(objRightX, objFloorY, objBackZ + objToWallDistance),
					   Vector3(objRightX - objWidth, objFloorY, objBackZ + objToWallDistance),
					   Vector3(objRightX - objWidth, objFloorY, objBackZ),
					   Vector3(objRightX, objFloorY, objBackZ)];  					   
						   
	// Define triangles
	if (reverseTriWinding) {
		shadowMeshH.triangles = [2, 1, 0, 3, 2, 0];
	}
	else {
		shadowMeshH.triangles = [0, 1, 2, 0, 2, 3];
	}
	
	shadowMeshH.RecalculateNormals();	// Define normals
	shadowMeshH.uv = [Vector2 (0, 0), Vector2 (0, 1), Vector2(1, 1), Vector2 (1, 0)];	// Define UVs
	
	// Add a collider to the shadow so that Hank can touch it
	
	var meshColliderH : MeshCollider = shadowH.GetComponent("MeshCollider");
	meshColliderH.sharedMesh = shadowMeshH;
	shadowH.renderer.material = shadowTexture;
	
	
	var meshFilterHor : MeshFilter = shadowH.GetComponent("MeshFilter");
	meshFilterHor.sharedMesh = shadowMeshH;
}

/*
 *	VerifyShadow()
 *
 *	Redraws the shadow with a new position, if the parent object has been moved.
 */
function VerifyShadow() {

	var isInvalid : boolean = false;
	
	// If the position has changed, invalidate the shadow
	// TODO: make sure this accounts for children-objects in complex shapes
	var newX : float = renderer.transform.position.x;
	var newY : float = renderer.transform.position.y;
	var newZ : float = renderer.transform.position.z;
	if (!newX.Equals(objOriginX) || !newY.Equals(objOriginY) || !newZ.Equals(objOriginZ)) {
		
		// Respecify fields and invalidate
		objOriginX = newX;
		objOriginY = newY;
		objOriginZ = newZ;
		isInvalid = true;
	}
	
	// Reposition, if necessary
	if (isInvalid) {
		RepositionShadow();
	}
}

/*
 *	RepositionShadow()
 *
 *	Repositions the shadow in space.
 *
 *	NEVER CALL THIS FUNCTION DIRECTLY (use VerifyShadow() instead)
 */
function RepositionShadow() {
	objRightX = objOriginX + (objWidth / 2);
	objLeftX = objOriginX - (objWidth / 2);
	objFloorY = objOriginY - (objHeight / 2) + SHADOW_OFFSET;
	objBackZ = objOriginZ + (objDepth / 2);
	objFrontZ = objOriginZ - (objDepth / 2);
	
	if(shadowV == null)
		CreateVerticalShadow();
	
	shadowMeshV.vertices = 
		[Vector3(objRightX, objFloorY + heightScaleOffset, objBackZ + objToWallDistance),
		   Vector3(objRightX - objWidth, objFloorY + heightScaleOffset, objBackZ + objToWallDistance),
		   Vector3(objRightX - objWidth, objFloorY + objHeight + heightScaleOffset, objBackZ + objToWallDistance),
		   Vector3(objRightX, objFloorY + objHeight + heightScaleOffset, objBackZ + objToWallDistance)];
		   
	colliderV.center = Vector3(objRightX - objWidth/2, objFloorY + objHeight/2, objBackZ + objToWallDistance);
										   
	// Define triangles
	if (reverseTriWinding) {
		shadowMeshV.triangles = [2, 1, 0, 3, 2, 0];
	}
	else {
		shadowMeshV.triangles = [0, 1, 2, 0, 2, 3];
	}
	
	shadowMeshV.RecalculateNormals();	// Define normals
	shadowMeshV.uv = [Vector2 (0, 0), Vector2 (0, 1), Vector2(1, 1), Vector2 (1, 0)];	// Define UVs
	
	// Apply mesh
	shadowV.GetComponent(MeshFilter).mesh = shadowMeshV;
	shadowV.renderer.material = shadowTexture;
	      
	if(!isLifted){
		shadowMeshH.vertices = 
			[Vector3(objRightX, objFloorY, objBackZ + objToWallDistance),
			   Vector3(objRightX - objWidth, objFloorY, objBackZ + objToWallDistance),
			   Vector3(objRightX - objWidth, objFloorY, objBackZ),
			   Vector3(objRightX, objFloorY, objBackZ)];  
					   
		// Define triangles
		if (reverseTriWinding) {
			shadowMeshH.triangles = [2, 1, 0, 3, 2, 0];
		}
		else {
			shadowMeshH.triangles = [0, 1, 2, 0, 2, 3];
		}
		
		shadowMeshH.RecalculateNormals();	// Define normals
		shadowMeshH.uv = [Vector2 (0, 0), Vector2 (0, 1), Vector2(1, 1), Vector2 (1, 0)];	// Define UVs

		shadowH.GetComponent(MeshFilter).mesh = shadowMeshH;
		shadowH.renderer.material = shadowTexture;
	}
	
	var wall : GameObject = GameObject.Find(WALL_NAME);
	objToWallDistance = Mathf.Abs(wall.renderer.transform.position.z - objOriginZ - objDepth / 2) - SHADOW_OFFSET;
}

/*
 *	SkewShadow()
 *
 *	Skews the shadow in relation to the player's position 
 */
function SkewShadow() {
	player2ObjDistance = player.position.x - objOriginX;
	var facing : boolean = playerIsFacing();
	if(nearestLight != null && (!facing || Mathf.Abs(player2ObjDistance) > Mathf.Abs(objOriginX - nearestLight.position.x))){
		if(!isCastByLight){
			isCastByLight = true;
			player2ObjDistance = objOriginX - nearestLight.position.x;
			castShadow(nearestLight.position.x, nearestLight.position.y, nearestLight.position.z);
		}
	}else{
		if(facing && player2ObjDistance < triggerDistance && player2ObjDistance > triggerDistance * -1){
			isCastByLight = false;
			castShadow(player.position.x, player.position.y, player.position.z);
		}else
			RemoveShadow();
	}	   
}

function castShadow(x: float, y: float, z: float){
	CreateShadow();
	
	if(isLifted) castElevatedShadow(x,y,z);
	else if(objToWallDistance > 5) castFloorShadow(x,z);
	else castWallShadow(x,z);
	
	AddShadowCollisionDetection();
}
function set_shadow_v_vertices(newRight: float, newLeft: float, objFloorY: float, newBack: float){
	shadowMeshV.vertices = 
		[Vector3(newRight, objFloorY, newBack),
		   Vector3(newLeft, objFloorY, newBack),
		   Vector3(newLeft, objFloorY + objHeight, newBack),
		   Vector3(newRight, objFloorY + objHeight, newBack)];
}
function set_shadow_h_vertices(farRightX: float, farLeftX: float, nearRightX: float, nearLeftX: float, 
	objFloorY: float, farRightZ: float, farLeftZ: float, nearLeftZ: float, nearRightZ: float){

	shadowMeshH.vertices = 
		[Vector3(farRightX, objFloorY, farRightZ),
		   Vector3(farLeftX, objFloorY, farLeftZ),
		   Vector3(nearLeftX, objFloorY, nearLeftZ),
		   Vector3(nearRightX, objFloorY, nearRightZ)];
		   
}
function castFloorShadow(x: float, z: float){
	if(player2ObjDistance > objWidth / 2){ 			// on the right side of gameobject
		var distX = x - objRightX;
		var distZ = z - objFrontZ;
		
		var mNear = distZ / distX;
		
		distZ = z - objBackZ;
		
		var mFar = distZ / distX;
		
		var leftX : float = objRightX - triggerDistance  * 1.5 + Mathf.Abs(distX)/3; // easing
		var farLeftZ : float = objBackZ - mFar * player2ObjDistance;
		var nearLeftZ : float = objFrontZ - mNear * player2ObjDistance;
		
		set_shadow_v_vertices(0, 0, 0, 0);

		shadowMeshH.vertices = 
			[Vector3(objRightX, objFloorY, objBackZ),
			   Vector3(leftX, objFloorY, farLeftZ),
			   Vector3(leftX, objFloorY, nearLeftZ),
			   Vector3(objRightX, objFloorY, objFrontZ)];
		
	}else if (player2ObjDistance < objWidth / -2){	// on the left side of gameobject
		distX = x - objLeftX;
		distZ = z - objFrontZ;
		
		mNear = distZ / distX;
		
		distZ = z - objBackZ;
		
		mFar = distZ / distX;
		
		var rightX : float = objLeftX + triggerDistance * 1.5 - Mathf.Abs(distX)/3; // easing
		var farRightZ : float = objBackZ - mFar * player2ObjDistance;
		var nearRightZ : float = objFrontZ - mNear * player2ObjDistance;
		
		set_shadow_v_vertices(0, 0, 0, 0);
		
		shadowMeshH.vertices = 
			[Vector3(rightX, objFloorY, farRightZ),
			   Vector3(objLeftX, objFloorY, objBackZ),
			   Vector3(objLeftX, objFloorY, objFrontZ),
			   Vector3(rightX, objFloorY, nearRightZ)];

	}
	Destroy(shadowV);
}

function castWallShadow(x: float, z: float){
	var newBack : float = objBackZ + objToWallDistance;
	var newRight : float;
	var newLeft : float;
	
	if(player2ObjDistance > objWidth / 2){ 		// on the right side of gameobject
		var distX = Mathf.Abs(x - objLeftX);
		var distZ = Mathf.Abs(z - objFrontZ);
		
		var mNear = distX / distZ;
		
		distX = Mathf.Abs(x - objRightX);
		distZ = Mathf.Abs(z - objBackZ);
		
		var mFar = distX / distZ;
		
		newRight = objRightX - mFar * objToWallDistance;
		newLeft = objLeftX + objWidth / 2 - mNear * objToWallDistance;
		
		set_shadow_v_vertices(newRight, newLeft, objFloorY, newBack);
		set_shadow_h_vertices(newRight, newLeft, objRightX, objLeftX, objFloorY, newBack, newBack, objFrontZ, objBackZ);
		
	}else if (player2ObjDistance < objWidth / -2){	// on the left side of gameobject
		distX = Mathf.Abs(x - objRightX);
		distZ = Mathf.Abs(z - objFrontZ);
		
		mNear = distX / distZ;
		
		distX = Mathf.Abs(x - objLeftX);
		distZ = Mathf.Abs(z - objBackZ);
		
		mFar = distX / distZ;
		
		newRight = objRightX - objWidth / 2 + mNear * objToWallDistance;
		newLeft = objLeftX + mFar * objToWallDistance;
		
		set_shadow_v_vertices(newRight, newLeft, objFloorY, newBack);
		set_shadow_h_vertices(newRight, newLeft, objRightX, objLeftX, objFloorY, newBack, newBack, objBackZ, objFrontZ);
		
	}else {								// within gameobject bounds
		distX = Mathf.Abs(x - objRightX);
		distZ = Mathf.Abs(z - objFrontZ);
		
		var mRight = distX / distZ;
		
		distX = Mathf.Abs(x - objLeftX);
		distZ = Mathf.Abs(z - objFrontZ);
		
		var mLeft = distX / distZ;
		if(player2ObjDistance < 0){		// left half of the game object
		
			newRight = Mathf.Max(objRightX, objRightX - objWidth  + mRight * objToWallDistance);
			newLeft = Mathf.Max(objLeftX, objLeftX - mLeft * objToWallDistance);
			
			set_shadow_v_vertices(newRight, newLeft, objFloorY, newBack);
			set_shadow_h_vertices(newRight, newLeft, objRightX, objLeftX, objFloorY, newBack, newBack, objFrontZ, objFrontZ);
			
		}else{							// right half of the game object
			
			newRight = Mathf.Min(objRightX, objRightX + mRight * objToWallDistance);
			newLeft = Mathf.Min(objLeftX, objLeftX + objWidth - mLeft * objToWallDistance);
			
			set_shadow_v_vertices(newRight, newLeft, objFloorY, newBack);
			set_shadow_h_vertices(newRight, newLeft, objRightX, objLeftX, objFloorY, newBack, newBack, objFrontZ, objFrontZ);
			
		}
	}
	
	var w =  newRight - newLeft;
	colliderV.size = Vector3(w, shadowDepth, shadowDepth);
	colliderV.center = Vector3(newRight - w/2, objFloorY + objHeight - shadowDepth/2, newBack);
		
}
function castElevatedShadow(x: float, y: float, z: float){

	var newBack : float = objBackZ + objToWallDistance;
	var distY = Mathf.Abs(y - objOriginY);
	var distZ = Mathf.Abs(z - objFrontZ);
	var mYZ : float = distY / distZ;
	
	if(player2ObjDistance > objWidth / 2){ 			// on the right side of gameobject
		var distX = Mathf.Abs(x - objLeftX);
		
		var mNear : float = distX / distZ;
		
		distX = Mathf.Abs(x - objRightX);
		distZ = Mathf.Abs(z - objBackZ);
		
		var mFar : float = distX / distZ;
		var newRight : float = objRightX - mFar * objDepth / 2;
		var deltaX : float = (mNear * objDepth / 2 - objWidth);
		var newLeft : float = objLeftX - deltaX;
		newLeft = Mathf.Min(newLeft, objLeftX);

	}else if (player2ObjDistance < objWidth / -2){	// on the left side of gameobject
		distX = Mathf.Abs(x - objRightX);
		
		mNear = distX / distZ;
		
		distX = Mathf.Abs(x - objLeftX);
		distZ = Mathf.Abs(z - objBackZ);
		
		mFar = distX / distZ;

		deltaX = (mNear * objDepth / 2 - objWidth);

		newRight = objRightX + deltaX;

		newLeft = objLeftX + mFar * objDepth / 2;
		newRight = Mathf.Max(newRight, objRightX);
				   
	}else {								// within gameobject bounds
		distX = Mathf.Abs(x - objRightX);
		
		var mRight = distX / distZ;
		
		distX = Mathf.Abs(x - objLeftX);
		distZ = Mathf.Abs(z - objFrontZ);
		
		var mLeft = distX / distZ;
		if(player2ObjDistance < 0){					// left half of the game object
			
			newRight = objRightX - objWidth + mRight * objDepth / 2;
			newLeft = Mathf.Max(objLeftX, objLeftX - mLeft * objToWallDistance);
			
		}else{							// right half of the game object
			
			newRight = Mathf.Min(objRightX, objRightX + mRight * objToWallDistance);
			newLeft = objLeftX + objWidth - mLeft * objDepth/2;
			
		}
	}

	/* Different than set_shadow_v_vertices() because it is elevated */
	// This math is weird because the object center is not aligned
	shadowMeshV.vertices = 
		[Vector3(objRightX, objOriginY + objHeight, newBack),
		   Vector3(objLeftX, objOriginY + objHeight, newBack),
		   Vector3(newLeft, objOriginY + 1.5*objHeight , newBack),
		   Vector3(newRight, objOriginY + 1.5*objHeight , newBack)];

	/* This SHOULD use mYZ but something is off */
	// shadowMeshV.vertices = 
	// 	[Vector3(objRightX, objOriginY + objHeight, newBack),
	// 	   Vector3(objLeftX, objOriginY + objHeight, newBack),
	// 	   Vector3(newLeft, objOriginY + mYZ * objDepth/2 , newBack),
	// 	   Vector3(newRight, objOriginY + mYZ * objDepth/2  , newBack)];
		   
	var w =  newRight - newLeft;
	colliderV.size = Vector3(w, shadowDepth, shadowDepth);
	colliderV.center = Vector3(newRight - w/2, objOriginY + 1.5 * objHeight - shadowDepth/2, newBack);
	
}
function AddShadowCollisionDetection(){
	switch(collisionMode){
	case 0:	// PushPop
		PushPopCollision();
		break;
		
	case 1: // Shadow Blend
		ShadowBlendCollision();
		break;
		
	case 2: // Quicksand
		QuicksandCollision();
		break;
		
	default:
		break;
	}
	
}
function PushPopCollision(){
	try{
		colliderV.enabled = true;
		var hankBounds : Bounds = getCombinedBounds(hank);
		if(hankBounds.Intersects(colliderV.bounds)){
			var hankBottom : float = hank.transform.position.y - hankBounds.size.y / 2;
			var hankCenter : float = hank.transform.position.x;
			var hankLeft : float = hank.transform.position.x - hankBounds.size.x / 2;
			var hankRight : float = hank.transform.position.x + hankBounds.size.x / 2;
			var colliderLeft : float = colliderV.center.x - colliderV.size.x / 2;
			var colliderRight : float = colliderV.center.x + colliderV.size.x / 2;
			var colliderCenter : float = colliderV.center.y;
			if(hankBottom < colliderCenter - collisionThreshold){
				if(hankCenter > colliderLeft){
					if(hankCenter < colliderRight)
						PushHankToTop();
					else if(hankLeft < colliderRight)
						PushHankToRight();
				}else if(hankRight > colliderLeft)
					PushHankToLeft();
			}
		}
	}catch(exception){}
}
function ShadowBlendCollision(){
	try{
		var hankBounds : Bounds = getCombinedBounds(hank);
		var hankBottom : float = hank.transform.position.y - hankBounds.size.y / 2;
		var colliderCenter : float = colliderV.center.y;
		if(hankBottom < colliderCenter - collisionThreshold){
			colliderV.enabled = false;
		}else{
			colliderV.enabled = true;
		}
	}catch(exception){}
}
private static var last_x : int = -1;
function QuicksandCollision(){
	try{
		colliderV.enabled = true;
		var hankBounds : Bounds = getCombinedBounds(hank);
		if(hankBounds.Intersects(colliderV.bounds)){
			var hankBottom : float = hank.transform.position.y - hankBounds.size.y / 2;
			var hankCenter : float = hank.transform.position.x;
			var hankLeft : float = hank.transform.position.x - hankBounds.size.x / 2;
			var hankRight : float = hank.transform.position.x + hankBounds.size.x / 2;
			var colliderLeft : float = colliderV.center.x - colliderV.size.x / 2;
			var colliderRight : float = colliderV.center.x + colliderV.size.x / 2;
			var colliderCenter : float = colliderV.center.y;
			if(hankBottom < colliderCenter - collisionThreshold){
				if(last_x == -1)
					last_x = hank.transform.position.x;
				else{
					if(hankCenter > colliderLeft){
						if(hankCenter < colliderRight)
							hank.transform.position.x = (hank.transform.position.x + last_x) / 2;
						else if(hankLeft < colliderRight)
							PushHankToRight();
					}else if(hankRight > colliderLeft)
						PushHankToLeft();
					}
			}
		}else
			last_x = -1;
	}catch(exception){}
}
function PushHankToTop(){
	var hankBounds : Bounds = getCombinedBounds(hank);
	var colliderTop : float = colliderV.center.y + colliderV.size.y / 2;
	hank.transform.position.y = colliderTop + hankBounds.size.y / 2;
}
function PushHankToLeft(){
	var hankBounds : Bounds = getCombinedBounds(hank);
	var colliderLeft : float = colliderV.center.x - colliderV.size.x / 2;
	hank.transform.position.x = colliderLeft - hankBounds.size.x / 2;
}
function PushHankToRight(){
	var hankBounds : Bounds = getCombinedBounds(hank);
	var colliderRight : float = colliderV.center.x + colliderV.size.x / 2;
	hank.transform.position.x = colliderRight + hankBounds.size.x / 2;
}

/*
 *	playerIsFacing()
 *
 *	Checks to see if the player is facing towards this object
 */
function playerIsFacing() {
	var rotation : Quaternion = player.rotation;
	var dot : float;
	if (player2ObjDistance < 0){ 									// left side
		dot = Quaternion.Dot(rotation, Quaternion(0.0, 1.0, 0.0, 0.0)); 	// facing right
	}else {											// right side
		dot = Quaternion.Dot(rotation, Quaternion(0.0, 0.0, 0.0, -1.0));	// facing left
	}
	if(dot > 0.5) return true;
	else return false;
}
