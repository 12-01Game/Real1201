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
var shadowTexture 				: Material;			// Stores the texture for the shadow
var reverseTriWinding 			: boolean;			// This prevents the "backfacing" problem
var nearestLight				: Transform;		// Nearest Light gameobject (if one exists) that casts static shadow

var scalingWidthVar 			: float 	= 1.0;			// shadow width scale in respect to gameobject
var scalingHeightVar 			: float 	= 1.0;			// shadow height scale in respect to gameobject
var shadowDepth					: float 	= 1.0;

// Environment settings
private final var WALL_NAME 		: String 	= "BackWall";	// Name identifier for the back wall to calculate objDistanceToWall
private final var SAM_NAME 			: String 	= "Test Sam";	// Name indentifier for the player to calculate distance from obj
private final var SHADOW_OFFSET		: float		= 0.01;			// distance shadow is offset from plane
private final var triggerDistance 	: float 	= 10.0;			// distance at which Shadow Skewing is triggered

// Object properties
private var objWidth 			: float;			// GameObject's width
private var objHeight 			: float;			// GameObject's height
private var objDepth 			: float;			// GameObject's depth
private var heightScaleOffset 	: float;			// The height offset produced by scaling
private var objOriginX 			: float;			// where the GameObject is in space
private var objOriginY 			: float;			// where the GameObject is in space
private var objOriginZ 			: float;			// where the GameObject is in space
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
private var dist 				: float;			// player distance from gameobject

/*
 *	Start()
 *
 *	Called as the object gets initialized.
 */
function Start () {
	player = GameObject.Find(SAM_NAME).transform;
	DefineDimensions();
}

function DefineDimensions(){
	if(gameObject.name.Contains("WallShelf")){
	
		var ledge : Transform = transform.GetChild(1);
		var bracketR : Transform = ledge.GetChild(0);
		var bracketL : Transform = ledge.GetChild(1);
		
		var combinedBounds = renderer.bounds;
		var renderers = GetComponentsInChildren(Renderer);
		for (var render : Renderer in renderers) {
		    if (render != renderer) {
		    	combinedBounds.Encapsulate(render.bounds);
		    }
		}
		
		objWidth = combinedBounds.size.x;
		objHeight = combinedBounds.size.y;
		objDepth = combinedBounds.size.z;
		
		objOriginX = combinedBounds.center.x;
		objOriginY = combinedBounds.center.y;
		objOriginZ = combinedBounds.center.z;
	
	}else{

		// Initialize GameObject properties
		objWidth = renderer.bounds.size.x;
		objHeight = renderer.bounds.size.y;
		objDepth = renderer.bounds.size.z;
		
		objOriginX = renderer.transform.position.x;
		objOriginY = renderer.transform.position.y;
		objOriginZ = renderer.transform.position.z;
	}
	
	// Do some scaling
	heightScaleOffset = ((objHeight * scalingHeightVar) - objHeight) / 2;
	objWidth = objWidth * scalingWidthVar;
	objHeight = objHeight * scalingWidthVar;	
	
	if(objOriginY >= player.renderer.bounds.size.y) isLifted = true;
	else isLifted = false;
	
	var wall : GameObject = GameObject.Find(WALL_NAME);
	objToWallDistance = Mathf.Abs(wall.renderer.transform.position.z - objOriginZ - objDepth / 2) - SHADOW_OFFSET;
}
/*
 *	Update()
 *
 *	Called as the object updates in realtime.
 */
function Update () {
	if (isVisible) {
		VerifyShadow();		// Verify the shadow's location based on its parent object
	}
}
function LateUpdate() {
	SkewShadow();
}

/*
 *	CreateShadow()
 *
 *	Explicitly tells the ShadowScript to begin generating collidable shadows for this object.
 */
function CreateShadow() {
	if (!isVisible) {
		isVisible = true;
		ActivateShadow();
	}
}

/*
 *	RemoveShadow()
 *
 *	Explicitly tells the ShadowScript to remove collidable shadows for this object.
 */
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
	// Define vertices
	var xRight : float = objOriginX + (objWidth / 2);
	var yFloor : float = objOriginY - (objHeight / 2) + SHADOW_OFFSET;
	var zBack : float = objOriginZ + (objDepth / 2);
	
	// Create vertical wall shadow
	shadowV = new GameObject(gameObject.name + "_Shadow_V", MeshRenderer, MeshFilter, MeshCollider);
	shadowV.tag = "Shadow";
	
	colliderV = shadowV.AddComponent("BoxCollider");
	colliderV.size = Vector3(objWidth, objHeight, shadowDepth);
	colliderV.center = Vector3(xRight - objWidth/2, yFloor + objHeight/2, zBack + objToWallDistance);
	
	shadowMeshV = new Mesh();	// Make a new shadow mesh
	shadowMeshV.name = gameObject.name + "_Shadow_Mesh_V";
	shadowMeshV.vertices = [Vector3(xRight, yFloor + heightScaleOffset, zBack + objToWallDistance),
					   Vector3(xRight - objWidth, yFloor + heightScaleOffset, zBack + objToWallDistance),
					   Vector3(xRight - objWidth, yFloor + objHeight + heightScaleOffset, zBack + objToWallDistance),
					   Vector3(xRight, yFloor + objHeight + heightScaleOffset, zBack + objToWallDistance)];	
					   
			   
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
	
	// create floor shadow if object is below eye level
	if(!isLifted){	
		shadowH = new GameObject(gameObject.name + "_Shadow_H", MeshRenderer, MeshFilter, MeshCollider);
		shadowH.tag = "Shadow";
		
		shadowMeshH = new Mesh();	// Make a new shadow mesh
		shadowMeshH.name = gameObject.name + "_Shadow_Mesh_H";
		shadowMeshH.vertices = [Vector3(xRight, yFloor, zBack + objToWallDistance),
						   Vector3(xRight - objWidth, yFloor, zBack + objToWallDistance),
						   Vector3(xRight - objWidth, yFloor, zBack),
						   Vector3(xRight, yFloor, zBack)];  					   
							   
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
	
	// Define vertices
	var xRight : float = objOriginX - (objWidth / 2);
	var yFloor : float = objOriginY - (objHeight / 2) + SHADOW_OFFSET;
	var zBack : float = objOriginZ - (objDepth / 2);
	
	shadowMeshV.vertices = 
		[Vector3(xRight, yFloor + heightScaleOffset, zBack + objToWallDistance),
		   Vector3(xRight - objWidth, yFloor + heightScaleOffset, zBack + objToWallDistance),
		   Vector3(xRight - objWidth, yFloor + objHeight + heightScaleOffset, zBack + objToWallDistance),
		   Vector3(xRight, yFloor + objHeight + heightScaleOffset, zBack + objToWallDistance)];
		   
	colliderV.center = Vector3(xRight - objWidth/2, yFloor + objHeight/2, zBack + objToWallDistance);
						   
	if(!isLifted){
		shadowMeshH.vertices = 
			[Vector3(xRight, yFloor, zBack + objToWallDistance),
			   Vector3(xRight - objWidth, yFloor, zBack + objToWallDistance),
			   Vector3(xRight - objWidth, yFloor, zBack),
			   Vector3(xRight, yFloor, zBack)];  
	}
						   
	// Define triangles
	if (reverseTriWinding) {
		shadowMeshV.triangles = [2, 1, 0, 3, 2, 0];
		if(!isLifted)shadowMeshH.triangles = [2, 1, 0, 3, 2, 0];
	}
	else {
		shadowMeshV.triangles = [0, 1, 2, 0, 2, 3];
		if(!isLifted)shadowMeshH.triangles = [0, 1, 2, 0, 2, 3];
	}
	
	shadowMeshV.RecalculateNormals();	// Define normals
	shadowMeshV.uv = [Vector2 (0, 0), Vector2 (0, 1), Vector2(1, 1), Vector2 (1, 0)];	// Define UVs
	
	if(!isLifted){
		shadowMeshH.RecalculateNormals();	// Define normals
		shadowMeshH.uv = [Vector2 (0, 0), Vector2 (0, 1), Vector2(1, 1), Vector2 (1, 0)];	// Define UVs
	}
	// Apply mesh
	shadowV.GetComponent(MeshFilter).mesh = shadowMeshV;
	shadowV.renderer.material = shadowTexture;
	
	if(!isLifted){
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
	dist = player.position.x - objOriginX;
	var facing : boolean = isFacing();
	if(nearestLight != null && (!facing || Mathf.Abs(dist) > Mathf.Abs(objOriginX - nearestLight.position.x))){
		if(!isCastByLight){
			isCastByLight = true;
			dist = objOriginX - nearestLight.position.x;
			castShadow(nearestLight.position.x, nearestLight.position.z);
		}
	}else{
		if(facing && dist < triggerDistance && dist > triggerDistance * -1){
			isCastByLight = false;
			castShadow(player.position.x, player.position.z);
		}else
			RemoveShadow();
	}	   
}

function castShadow(x: float, z: float){

	CreateShadow();
	
	var xRight : float = objOriginX + (objWidth / 2);
	var xLeft : float = objOriginX - (objWidth / 2);
	var yFloor : float = objOriginY - (objHeight / 2) + SHADOW_OFFSET;
	var zBack : float = objOriginZ + (objDepth / 2);
	var zFront : float = objOriginZ - (objDepth / 2);
	
	var newBack : float = zBack + objToWallDistance;
	var newRight : float;
	var newLeft : float;
	
	if(dist > objWidth / 2){ // on the right side of gameobject
		var distX = Mathf.Abs(x - xLeft);
		var distZ = Mathf.Abs(z - zFront);
		
		var mNear = distX / distZ;
		
		distX = Mathf.Abs(x - xRight);
		distZ = Mathf.Abs(z - zBack);
		
		var mFar = distX / distZ;
		if(!isLifted){	   
			newRight = xRight - mFar * objToWallDistance;
			newLeft = xLeft + objWidth - mNear * objToWallDistance;
			
			shadowMeshV.vertices = 
				[Vector3(newRight, yFloor, newBack),
				   Vector3(newLeft, yFloor, newBack),
				   Vector3(newLeft, yFloor + objHeight, newBack),
				   Vector3(newRight, yFloor + objHeight, newBack)];
						   
			shadowMeshH.vertices = 
				[Vector3(newRight, yFloor, newBack),
				   Vector3(newLeft, yFloor, newBack),
				   Vector3(xLeft, yFloor, zFront),
				   Vector3(xRight, yFloor, zBack)];
				   
		}else{
			newRight = xRight - mFar * objDepth / 2;
			newLeft = xLeft + objWidth - mNear * objDepth / 2;
			
			shadowMeshV.vertices = 
				[Vector3(xRight, objOriginY + objHeight, newBack),
				   Vector3(xLeft, objOriginY + objHeight, newBack),
				   Vector3(newLeft, objOriginY + 1.5 * objHeight, newBack),
				   Vector3(newRight, objOriginY + 1.5 * objHeight, newBack)];

		}
	}else if (dist < objWidth / -2){	// on the left side of gameobject
		distX = Mathf.Abs(x - xRight);
		distZ = Mathf.Abs(z - zFront);
		
		mNear = distX / distZ;
		
		distX = Mathf.Abs(x - xLeft);
		distZ = Mathf.Abs(z - zBack);
		
		mFar = distX / distZ;
		
		if(!isLifted){
			newRight = xRight - objWidth + mNear * objToWallDistance;
			newLeft = xLeft + mFar * objToWallDistance;
		
			shadowMeshV.vertices = 
				[Vector3(newRight, yFloor, newBack),
				   Vector3(newLeft, yFloor, newBack),
				   Vector3(newLeft, yFloor + objHeight, newBack),
				   Vector3(newRight, yFloor + objHeight, newBack)];
			
			shadowMeshH.vertices = 
				[Vector3(newRight, yFloor, newBack),
				   Vector3(newLeft, yFloor, newBack),
				   Vector3(xLeft, yFloor, zBack),
				   Vector3(xRight, yFloor, zFront)];
				   
		}else{
			newRight = xRight - objWidth + mNear * objDepth / 2;
			newLeft = xLeft + mFar * objDepth / 2;
			
			shadowMeshV.vertices = 
				[Vector3(xRight, objOriginY + objHeight, newBack),
				   Vector3(xLeft, objOriginY + objHeight, newBack),
				   Vector3(newLeft, objOriginY + 1.5 * objHeight, newBack),
				   Vector3(newRight, objOriginY + 1.5 * objHeight, newBack)];
				   
		}
	}else {	// within gameobject bounds
		distX = Mathf.Abs(x - xRight);
		distZ = Mathf.Abs(z - zFront);
		
		var mRight = distX / distZ;
		
		distX = Mathf.Abs(x - xLeft);
		distZ = Mathf.Abs(z - zFront);
		
		var mLeft = distX / distZ;
		if(dist < 0){		// left half of the game object
			
			if(isLifted){
			
				newRight = xRight - objWidth + mRight * objDepth / 2;
				newLeft = Mathf.Max(xLeft, xLeft - mLeft * objToWallDistance);
			
				shadowMeshV.vertices = 
					[Vector3(xRight, objOriginY + objHeight, newBack),
					   Vector3(xLeft, objOriginY + objHeight, newBack),
					   Vector3(newLeft, objOriginY + 1.5 * objHeight, newBack),
					   Vector3(newRight, objOriginY + 1.5 * objHeight, newBack)];
			
			}else{
			
				newRight = xRight - objWidth  + mRight * objToWallDistance;
				newLeft = Mathf.Max(xLeft, xLeft - mLeft * objToWallDistance);
				
				shadowMeshV.vertices = 
					[Vector3(newRight, yFloor, newBack),
					   Vector3(newLeft, yFloor, newBack),
					   Vector3(newLeft, yFloor + objHeight, newBack),
					   Vector3(newRight, yFloor + objHeight, newBack)];
				
				shadowMeshH.vertices = 
					[Vector3(newRight, yFloor, newBack),
					   Vector3(newLeft, yFloor, newBack),
					   Vector3(xLeft, yFloor, zFront),
					   Vector3(xRight, yFloor, zFront)];
			}
			
		}else{		// right half of the game object
			
			if(isLifted){
				newRight = Mathf.Min(xRight, xRight + mRight * objToWallDistance);
				newLeft = xLeft + objWidth - mLeft * objDepth/2;
				
				shadowMeshV.vertices = 
					[Vector3(xRight, objOriginY + objHeight, newBack),
					   Vector3(xLeft, objOriginY + objHeight, newBack),
					   Vector3(newLeft , objOriginY + 1.5 * objHeight, newBack),
					   Vector3(newRight, objOriginY + 1.5 * objHeight, newBack)];
			
			}else{
				newRight = Mathf.Min(xRight, xRight + mRight * objToWallDistance);
				newLeft = xLeft + objWidth - mLeft * objToWallDistance;
				
				shadowMeshV.vertices = 
					[Vector3(newRight, yFloor, newBack),
					   Vector3(newLeft, yFloor, newBack),
					   Vector3(newLeft, yFloor + objHeight, newBack),
					   Vector3(newRight, yFloor + objHeight, newBack)];
				
				shadowMeshH.vertices = 
					[Vector3(newRight, yFloor, newBack),
					   Vector3(newLeft, yFloor, newBack),
					   Vector3(xLeft, yFloor, zFront),
					   Vector3(xRight, yFloor, zFront)];
			}
			
		}
	}
	
	var w =  newRight - newLeft;
	colliderV.size = Vector3(w, shadowDepth, shadowDepth);
	if(isLifted)
		colliderV.center = Vector3(newRight - w/2, objOriginY + 1.5 * objHeight - shadowDepth/2, newBack);
	else
		colliderV.center = Vector3(newRight - w/2, yFloor + objHeight - shadowDepth/2, newBack);
}

/*
 *	isFacing()
 *
 *	Checks to see if the player is facing towards this object
 */
function isFacing() {
	var rotation : Quaternion = player.rotation;
	var dot : float;
	if (dist < 0){ 									// left side
		dot = Quaternion.Dot(rotation, Quaternion(0.0, 1.0, 0.0, 0.0)); 	// facing right
	}else {											// right side
		dot = Quaternion.Dot(rotation, Quaternion(0.0, 0.0, 0.0, -1.0));	// facing left
	}
	if(dot > 0.5) return true;
	else return false;
}
