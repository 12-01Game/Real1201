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
private var collisionMode		: int 		= 0; 	// 0 = PushPop, 1 = Shadow Blend, 2 = Quicksand
var collisionThreshold 			: float 	= .5;
var alwaysCastByNearestLight	: boolean 	= false;

var shadowTextureWall			: Material;			// Shadow material on the wall
var shadowTextureFloor2Wall		: Material;			// Shadow material from the object to the wall on the floor
var shadowTextureFront			: Material;			// Shadow material on the floor when the player is in line with the object
var reverseTriWinding 			: boolean;			// This prevents the "backfacing" problem
var nearestLight				: Transform;		// Nearest Light gameobject (if one exists) that casts static shadow

var scalingWidthVar 			: float 	= 1.0;			// shadow width scale in respect to gameobject
var scalingHeightVar 			: float 	= 1.0;			// shadow height scale in respect to gameobject
var shadowDepth					: float 	= 1.0;

// Environment settings
private final var WALL_NAME 		: String 	= "BackWall";	// Name identifier for the back wall to calculate objDistanceToWall
private final var SAM_NAME 			: String 	= "Sam";	// Name indentifier for the player to calculate distance from obj
private final var HANK_NAME			: String 	= "Hank";
private final var SHADOW_OFFSET		: float		= 0.1;			// distance shadow is offset from plane
private final var triggerDistance 	: float 	= 15.0;			// distance at which Shadow Skewing is triggered

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
private var isInLane			: boolean;
private var belowEyeLevel		: boolean;

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
private var player2ObjDistance 	: float;			// player distance from gameobject

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
	try{					// try to get dimensions from collider

		objWidth = collider.bounds.size.x;
		objHeight = collider.bounds.size.y;
		objDepth = collider.bounds.size.z;

		objOriginX = collider.transform.position.x;
		objOriginY = collider.transform.position.y;
		objOriginZ = collider.transform.position.z;

	}catch(exception){		// else get the dimensions from the renderers
		var combinedBounds : Bounds = getCombinedBounds(gameObject);

		objWidth = combinedBounds.size.x;
		objHeight = combinedBounds.size.y;
		objDepth = combinedBounds.size.z;

		objOriginX = combinedBounds.center.x;
		objOriginY = combinedBounds.center.y;
		objOriginZ = combinedBounds.center.z;
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

	if(Mathf.Abs(wall.renderer.transform.position.z - objOriginZ) > 5) isInLane = true;
	else isInLane = false;

	if(objFloorY < 3) belowEyeLevel = true;
	else belowEyeLevel = false;
}
function getCombinedBounds(obj : GameObject){
	var combinedBounds : Bounds = obj.renderer.bounds;
	var renderers = obj.GetComponentsInChildren(Renderer);
	for (var render : Renderer in renderers) {
		if(obj.renderer != render){	
		    if (combinedBounds == null) {
		    	combinedBounds = render.bounds;
		    }else{
		    	combinedBounds.Encapsulate(render.bounds);
		    }
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
	ShadowDetection();
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
		RemoveShadowV();
		RemoveShadowH();
	}
}
function RemoveShadowV(){
	Destroy(shadowV);
	shadowMeshV = null;
	shadowV = null;
}
function RemoveShadowH(){
	Destroy(shadowH);
	shadowMeshH = null;
	shadowH = null;
}

/*
 *	ActivateShadow()
 *
 *	Kicks off the shadow creation process by generating a Mesh
 *	for the shadow to reside on.
 *
 * 	DO NOT CALL THIS FUNCTION DIRECTLY
 */
function ActivateShadow() {
	CreateVerticalShadow();

	// create floor shadow if object is below eye level
	if(!isLifted){	
		CreateHorizontalShadow();
	}	
}
/* DO NOT CALL THIS FUNCTION DIRECTLY */
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
	shadowV.renderer.material = shadowTextureWall;

	var meshFilterVert : MeshFilter = shadowV.GetComponent("MeshFilter");
	meshFilterVert.sharedMesh = shadowMeshV;
}
/* DO NOT CALL THIS FUNCTION DIRECTLY */
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

	if(isInLane)
		shadowH.renderer.material = shadowTextureFront;
	else
		shadowH.renderer.material = shadowTextureFloor2Wall;

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

	var newX : float;
	var newY : float;
	var newZ : float;

	try{					// try to get dimensions from collider

		newX = collider.transform.position.x;
		newY = collider.transform.position.y;
		newZ = collider.transform.position.z;

	}catch(exception){		// else get the dimensions from the renderers

		var combinedBounds : Bounds = getCombinedBounds(gameObject);

		newX = combinedBounds.center.x;
		newY = combinedBounds.center.y;
		newZ = combinedBounds.center.z;
	}

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

	var wall : GameObject = GameObject.Find(WALL_NAME);
	objToWallDistance = Mathf.Abs(wall.renderer.transform.position.z - objOriginZ - objDepth / 2) - SHADOW_OFFSET;
	
	if(objToWallDistance > 5) isInLane = true;
	else isInLane = false;

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

	if(isInLane)
		shadowV.renderer.material = shadowTextureFront;
	else
		shadowV.renderer.material = shadowTextureFloor2Wall;

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
		shadowH.renderer.material = shadowTextureWall;
	}
}

/*
 *	SkewShadow()
 *
 *	Skews the shadow in relation to the player's position 
 */
function ShadowDetection() {
	player2ObjDistance = player.position.x - objOriginX;
	var facing : boolean = playerIsFacing();
	if(nearestLight != null && 
		(alwaysCastByNearestLight || !facing || Mathf.Abs(player2ObjDistance) > Mathf.Abs(nearestLight.position.x - objOriginX))){
		if(!isCastByLight){
			isCastByLight = true;
			player2ObjDistance = nearestLight.position.x - objOriginX;
			CastShadow(nearestLight.position.x, nearestLight.position.y, nearestLight.position.z);
		}
	}else{
		if(facing && player2ObjDistance < triggerDistance && player2ObjDistance > triggerDistance * -1){
			isCastByLight = false;
			CastShadow(player.position.x, player.position.y, player.position.z);
		}else
			RemoveShadow();
	}
}

function CastShadow(x: float, y: float, z: float){
	CreateShadow();

	if(isLifted && !belowEyeLevel) CastElevatedShadow(x,y,z);
	else if(isInLane) CastFloorShadow(x,z);
	else CastWallShadow(x,z);

	AddShadowCollisionDetection();
	ShadowFade();
}

function ShadowFade(){
	var d : float = Mathf.Abs(player2ObjDistance);
	try{
		shadowV.renderer.material.color.a = 1 - d / triggerDistance;
	}catch(exception){}
	try{
		shadowH.renderer.material.color.a = 1 - d / triggerDistance;
	}catch(exception){}
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

	if(shadowMeshH != null)
		shadowMeshH.vertices = 
			[Vector3(farRightX, objFloorY, farRightZ),
			   Vector3(farLeftX, objFloorY, farLeftZ),
			   Vector3(nearLeftX, objFloorY, nearLeftZ),
			   Vector3(nearRightX, objFloorY, nearRightZ)];

}
function CastFloorShadow(x: float, z: float){
	RemoveShadowV();
	if(player2ObjDistance > objWidth / 2){ 			// on the right side of gameobject
		var distX = x - objRightX;
		var distZ = z - objFrontZ;

		var mNear = distZ / distX;

		distZ = z - objBackZ;

		var mFar = distZ / distX;

		var leftX : float = objLeftX - 1 * triggerDistance;
		var farLeftZ : float = objBackZ - mFar * player2ObjDistance;
		var nearLeftZ : float = objFrontZ - mNear * player2ObjDistance;

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

		var rightX : float = objRightX + 1 * triggerDistance; 
		var farRightZ : float = objBackZ - mFar * player2ObjDistance;
		var nearRightZ : float = objFrontZ - mNear * player2ObjDistance;

		shadowMeshH.vertices = 
			[Vector3(rightX, objFloorY, farRightZ),
			   Vector3(objLeftX, objFloorY, objBackZ),
			   Vector3(objLeftX, objFloorY, objFrontZ),
			   Vector3(rightX, objFloorY, nearRightZ)];

	}
}

function CastWallShadow(x: float, z: float){
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
		set_shadow_h_vertices(newRight, newLeft, objRightX, objLeftX, objFloorY, newBack, newBack, objFrontZ, objFrontZ);

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
		set_shadow_h_vertices(newRight, newLeft, objRightX, objLeftX, objFloorY, newBack, newBack, objFrontZ, objFrontZ);

	}else {								// within gameobject bounds
		distX = Mathf.Abs(x - objRightX);
		distZ = Mathf.Abs(z - objFrontZ);

		var mRight = distX / distZ;

		distX = Mathf.Abs(x - objLeftX);
		distZ = Mathf.Abs(z - objFrontZ);

		var mLeft = distX / distZ;
		if(player2ObjDistance < 0){		// left half of the game object

			newRight = Mathf.Max(objRightX, objRightX - objWidth /2 + mRight * objToWallDistance);
			newLeft = Mathf.Max(objLeftX, objLeftX - mLeft * objToWallDistance);

			set_shadow_v_vertices(newRight, newLeft, objFloorY, newBack);
			set_shadow_h_vertices(newRight, newLeft, objRightX, objLeftX, objFloorY, newBack, newBack, objFrontZ, objFrontZ);

		}else{							// right half of the game object

			newRight = Mathf.Min(objRightX, objRightX + mRight * objToWallDistance);
			newLeft = Mathf.Min(objLeftX, objLeftX + objWidth / 2 - mLeft * objToWallDistance);

			set_shadow_v_vertices(newRight, newLeft, objFloorY, newBack);
			set_shadow_h_vertices(newRight, newLeft, objRightX, objLeftX, objFloorY, newBack, newBack, objFrontZ, objFrontZ);

		}
	}

	var w =  newRight - newLeft;
	colliderV.size = Vector3(w, shadowDepth, shadowDepth);
	colliderV.center = Vector3(newRight - w/2, objFloorY + objHeight - shadowDepth/2, newBack);

}
function CastElevatedShadow(x: float, y: float, z: float){

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

			newRight = Mathf.Max(objRightX, objRightX - objWidth + mRight * objDepth / 2);
			newLeft = Mathf.Max(objLeftX, objLeftX - mLeft * objToWallDistance);

		}else{							// right half of the game object

			newRight = Mathf.Min(objRightX, objRightX + mRight * objToWallDistance);
			newLeft = Mathf.Min(objLeftX, objLeftX + objWidth - mLeft * objDepth/2);

		}
	}

	/* Different than set_shadow_v_vertices() because it is elevated */
	// This math is weird because the object center is not aligned
	shadowMeshV.vertices = 
		[Vector3(objRightX, objOriginY + objHeight/2, newBack),
		   Vector3(objLeftX, objOriginY + objHeight/2, newBack),
		   Vector3(newLeft, objOriginY + objHeight , newBack),
		   Vector3(newRight, objOriginY + objHeight , newBack)];

	/* This SHOULD use mYZ but something is off */
	// shadowMeshV.vertices = 
	// 	[Vector3(objRightX, objOriginY + objHeight, newBack),
	// 	   Vector3(objLeftX, objOriginY + objHeight, newBack),
	// 	   Vector3(newLeft, objOriginY + mYZ * objDepth/2 , newBack),
	// 	   Vector3(newRight, objOriginY + mYZ * objDepth/2  , newBack)];

	var w =  newRight - newLeft;
	colliderV.size = Vector3(w, shadowDepth, shadowDepth);
	colliderV.center = Vector3(newRight - w/2, objOriginY + objHeight - shadowDepth/2, newBack);

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
		dot = Quaternion.Dot(rotation, Quaternion(0.0, 0.0, 0.0, 1.0));	// facing left
	}
	if(dot > 0.5) return true;
	else return false;
}