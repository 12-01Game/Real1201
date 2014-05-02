/*
 *	CharacterScript.js
 *
 *	A script that causes characters in 12:01 to interact with the game world.
 *
 *	Version 1.0
 *	Coded with <3 by Jonathan Ballands
 *
 *	(C)2014 All Rights Reserved.
 */

#pragma strict
@script RequireComponent(CharacterController)

var player 						: String;			// Used to determine which input from the input manager to get

var jumpForce					: float = 10.0f;	// The amount of force that the character jumps with
var speed						: float = 6.0f;		// The speed at which this character moves
var rotationSpeed				: float = 10.0f;	// The speed at which this character rotates

var canRotate					: boolean = true;	// Set this to true if you want the character to rotate

var gravity						: float = .0981;		// Control how much gravity this character is exposed to

private var controller			: CharacterController;			// The CharacterController component that must be attached to this character

private var faceVector			: Vector3 = Vector3.zero;		// The vector the character moves on
private var downVector			: Vector3 = Vector3.down;		// The vector the character falls on
private var savedYMotion		: float = 0;					// When the character is airborne, use this value to figure out how much the player should 
																// fall by
private var fallFrames			: int = 1;						// How long has this character been falling?

private var shouldFaceAngle		: float = 180;
private var currFaceAngle		: float = 0;

private var anim				: Animation;
//private var idleMotion			: String = "standard_idle_1";
private var walkMotion			: String = "HankWalk";
//private var walkBackwards		: String = "walking_backward_1";

private var heightAboveFloor : float;

/*
 *	Awake()
 *
 *	Called when this script wakes up.
 */
function Awake() {
	faceVector = transform.TransformDirection(Vector3.left);
	controller = GetComponent("CharacterController");
	anim = GetComponent(Animation);
	
	var floorY = GameObject.Find("Floor Level").collider.bounds.max.y;
	heightAboveFloor = controller.transform.position.y - floorY;
}

/*
 *	Update()
 *
 *	Called as this character updates.
 */
function Update () {

	// If the character can rotate, rotate smoothly (Sam)
	/*Checks are done to make sure he doesn't rotate while pulling - 
		if done right, can make it look really stupid if he pulls mid rotation
		need to add a sort of 'snap' to where if this happens, he snaps to the proper rotation */
	var moving_object = false;
	if (ObjectManipulation.pressed && ObjectManipulation.object != null)
		moving_object = true;
	if (canRotate && !moving_object && this.gameObject.tag == "Player") {
		// Use slerp to provide smooth character rotation
		var sfa = Quaternion.Euler(Vector3(0, shouldFaceAngle * -1, 0));
		transform.rotation = Quaternion.Slerp(transform.rotation, sfa, rotationSpeed * Time.deltaTime);
	}
	
	// Otherwise, don't rotate smoothly at all (Hank)
	else if (this.gameObject.tag == "Player2") {
		transform.rotation.y = shouldFaceAngle;
	}
	
	// Get desired X-motion
	var xMotion = Input.GetAxis(player + "Horizontal") * speed;
	
	var yMotion = 0;
	
	var grounded = isGrounded();
	
	// Jumping...
	if (grounded && Input.GetButtonDown("Jump")) {		
		// Reset gravity acceleration
		fallFrames = 1;
		yMotion = jumpForce;
	}

	// Grounded...
	else if (grounded) {
	
		// Reset gravity acceleration
		fallFrames = 1;
		
		// Neutralize motion
		if (Mathf.Abs(xMotion) < 2) {
			xMotion = 0;
		}
		
		// No Y-motion
		yMotion = 0;
		
		// Set the angle to turn to, if needed
		if (xMotion > 0) {
			shouldFaceAngle = 180;
		}
		else if (xMotion < 0) {
			shouldFaceAngle = 0;
		}
		
		// Play animation if there's xMotion
		if (Mathf.Abs(xMotion) > 2) {
			anim.Play(walkMotion);
		}
		else {
			//anim.Stop();
			//anim.Play(idleMotion);
		}
	}
	
	// Falling...
	else {
	
		// Check for a collision above him
		if ((controller.collisionFlags & CollisionFlags.Above) != 0) {
			savedYMotion = -10;
			fallFrames = fallFrames + 20;
		}
		
		// Simulate acceleration by multiplying by the number of frames the character has been airborne for
		yMotion = savedYMotion - (gravity * fallFrames);
		fallFrames++;
	}
		
	// Move	
	controller.Move(Vector3(xMotion * Time.deltaTime, yMotion * Time.deltaTime, 0));
	
	// Save the motions
	savedYMotion = yMotion;
	
}

function isGrounded() {
	var surface : RaycastHit;
	var grounded = Physics.Raycast(controller.transform.position, Vector3(0, -1, 0), surface, heightAboveFloor + 0.01);
	
	if (grounded) {
		Debug.Log(surface.collider);
	}
	
	return grounded;
}
