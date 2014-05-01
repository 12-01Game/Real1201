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
var canJump						: boolean = true;	// Set this to true if you want the character to jump

var gravity						: float = .0981;		// Control how much gravity this character is exposed to

static var xMotion				: float = 0.0;		// LOL ROGER

private var bingo				: Transform;		// The "invisble dog" that allows the camera to track slightly ahead of the player

private var controller			: CharacterController;			// The CharacterController component that must be attached to this character

private var faceVector			: Vector3 = Vector3.zero;		// The vector the character moves on
private var downVector			: Vector3 = Vector3.down;		// The vector the character falls on
private var savedXMotion		: float = 0;					// When the character is airborne, use this value to launch the character in this direction
private var savedYMotion		: float = 0;					// When the character is airborne, use this value to figure out how much the player should 
																// fall by
private var fallFrames			: int = 1;						// How long has this character been falling?

private var shouldFaceAngle		: float = 180;
private var currFaceAngle		: float = 0;

private var isScared			: boolean = false;				// Determines if Sam is controllable or if Sam is being controlled by the CPU
private var runDistance 		: float = 0.0;

private var anim				: Animation;
private var idleMotion			: String = "standard_idle_1";
private var walkMotion			: String = "walking";
private var walkBackwards		: String = "walking_backward_1";


/*
 *	Awake()
 *
 *	Called when this script wakes up.
 */
function Awake() {
	faceVector = transform.TransformDirection(Vector3.left);
	controller = GetComponent("CharacterController");
	bingo =  transform.Find("Bingo");
	anim = GetComponentsInChildren(Animation)[0];
}

/*
 *	Update()
 *
 *	Called as this character updates.
 */
function Update () {

	// First, check if Sam is being controlled by the CPU or the player
	if (isScared) {
	
		// Turn him away from the danger
		var sfaa = Quaternion.Euler(Vector3(0, 0 * -1, 0));
		transform.rotation = Quaternion.Slerp(transform.rotation, sfaa, rotationSpeed * Time.deltaTime);
		
		// Make him run
		controller.Move(Vector3(10 * Time.deltaTime * -1, 0, 0));
		runDistance = runDistance - 10 * Time.deltaTime;
		
		// Has Sam run far enough?
		if (runDistance <= 0) {
			isScared = false;
			shouldFaceAngle = 0;
		}
		return;
	}


	// If the character can rotate, rotate smoothly (Sam)
	/*Checks are done to make sure he doesn't rotate while pulling - 
		if done right, can make it look really stupid if he pulls mid rotation
		need to add a sort of 'snap' to where if this happens, he snaps to the proper rotation */
	var moving_object = false;
	var om : ObjectManipulation;
	if (om.pressed && om.object != null && om.object.transform.position.z < om.laneFront)
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
	
	xMotion = 0;
	var yMotion = 0;
	
	// Jumping...
	if (controller.isGrounded && Input.GetButton("Jump") && canJump) {		
		// Reset gravity acceleration
		fallFrames = 1;
		yMotion = jumpForce;
		xMotion = savedXMotion;
	}

	// Grounded...
	else if (controller.isGrounded) {
	
		// Reset gravity acceleration
		fallFrames = 1;
		
		// Get desired X-motion
		xMotion = Input.GetAxis(player + "Horizontal") * speed;
		
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
		
		// Figure out what bingo should do
		var shouldBeFacing = Quaternion.Euler(Vector3(0, shouldFaceAngle, 0));
		var isReallyFacing = transform.rotation;
		
		print(shouldBeFacing + "==" + isReallyFacing);
		
		if (shouldBeFacing == isReallyFacing) {
			// Ok to lerp
			if (xMotion > 0) {
				bingo.transform.position.x = transform.position.x + 6;
			}
			else if (xMotion < 0) {
				bingo.transform.position.x = transform.position.x - 6;
			}
		}
		
		// Override with strife
		if (Input.GetAxis("LockLeft") > 0) {
			shouldFaceAngle = 0;
		}
		else if (Input.GetAxis("LockRight") > 0) {
			shouldFaceAngle = 180;
		}
		
		// Play animation if there's xMotion
		if (Mathf.Abs(xMotion) > 2) {
			// Walk backwards?
			if ((Input.GetAxis("LockLeft") > 0 && xMotion > 0) || (Input.GetAxis("LockRight") > 0 && xMotion < 0)) {
					anim.Play(walkBackwards);
			}
			else {
				anim.Play(walkMotion);
			}
		}
		else {
			anim.Stop();
			anim.Play(idleMotion);
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
		
		// Use the X-motion right before the character got airborne
		xMotion = savedXMotion;
	}
		
	// Move	
	controller.Move(Vector3(xMotion * Time.deltaTime, yMotion * Time.deltaTime, 0));
	
	// Save the motions
	savedXMotion = xMotion;
	savedYMotion = yMotion;
	
}

/*
 *	turnAndRun()
 *
 *	For Patrick's script.
 */
 function turnAndRun(runDist : float) {
 	
 	// Turn Sam around and make him runb
 	isScared = true;
 	runDistance = runDist;
 }
 
