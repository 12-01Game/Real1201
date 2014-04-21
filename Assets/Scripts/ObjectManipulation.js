#pragma strict

/*Thing being pushed or pulled */
public static var object : GameObject;

/*Whether Sam is trying to grab */
private var grab : boolean;

/*A helper var for grab is a roundabout way of ignoring the larger trigger of any pushpull object */
private var secondGrab : boolean;

/*bounds */
private var this_bounds;

/*Things that are shiftable */
private var things_to_shift;

/*All game objects that could be collided with */
private var all_objects;

/*Movement of Sam */
private var movement : CharacterScript;

/*Left side of initial lane (back wall) */
private var lane_zero = 5;

/*Width of the entire floor */
private var floor_width = 10;

/*Left side of middle lane */
private var laneMid = lane_zero - floor_width / 3;

/*Left side of lane closest to camera */
private var laneFront = laneMid - floor_width / 3;

/*Initial speed of Sam */
private static var speed : float;

/*Amount to shift an object by */
public static final var SHIFTAMT = 3.5;

/*Test GameObject which is freely manipulable */
private var go : GameObject;

/*Collider for the above GameObject -
	 used to determine if shiftable object will collide with anything */
private var bc_collider : BoxCollider;

/*Axis for shifting */
private static final var shiftAxis = "Shift";

/*Axis for pushing */
private static final var pushAxis = "Push";

/*Tag for gameobjects that are copies */
private static final var copy = "Copy";

public static var shiftable = false;

/** 
Initializes manipulable gameobject
Finds all gameobjects
Finds all gameobjects with 'pushpull' tag -
	currently used with distance to see which pushpull object is referenced and then compares against 
	all gameobjects to see if a collision is imminent
Loops through all things that can shift - 
	This is done to make 2 copies of each GameObject representing different triggers.
	One trigger (copy) states whether the object will collide with other objects.
	The other trigger (copy2) states whether Sam can shift the object whlie it is in the other lane
Adds collider to the manipulable gameobject to determine if a collision will happen
Sets initial value of grab to false 
Sets the initial value of secondGrab to false;
Initializes movement to the CharacterScript
Initializes speed to CharacterScript initial speed
*/
function Start () {
	go = new GameObject("go");
	go.tag = copy;
	all_objects = GameObject.FindObjectsOfType(GameObject);
	things_to_shift = GameObject.FindGameObjectsWithTag("pushpull");
	
	for (var thing : GameObject in things_to_shift) {
		var Copy = new GameObject(thing + "_" + copy);
		Copy.tag = copy;
		Copy.AddComponent(BoxCollider);
		var bc = Copy.GetComponent(BoxCollider);
		bc.center = new Vector3(thing.collider.bounds.center.x,
				thing.collider.bounds.center.y,
				thing.collider.bounds.center.z);
		var width = thing.collider.bounds.size.z / 2;
		bc.size = new Vector3(thing.collider.bounds.size.x * 0.95, // just smaller than the width
					thing.collider.bounds.size.y,
					thing.collider.bounds.size.z + width + SHIFTAMT);
		bc.isTrigger = true;

		var Copy2 = new GameObject(thing + "_"+copy+"2");
		Copy2.tag = copy;
		Copy2.AddComponent(BoxCollider);
		var bc2 = Copy2.GetComponent(BoxCollider);
		bc2.center = new Vector3(thing.collider.bounds.center.x,
			thing.collider.bounds.center.y,
			thing.collider.bounds.center.z);
		var width2 = thing.collider.bounds.size.z / 2;
		bc2.size = new Vector3(thing.collider.bounds.size.x + 1, // just smaller than the width
					thing.collider.bounds.size.y,
					thing.collider.bounds.size.z + width + SHIFTAMT);
		bc2.isTrigger = true;
		
		Copy.AddComponent(ShiftTriggerScript);
		Copy2.AddComponent(ShiftTriggerScript2);
	}
	
	go.AddComponent(BoxCollider);
	bc_collider = go.GetComponent(BoxCollider);
	grab = false;
	secondGrab = false;
	movement = GetComponent(CharacterScript);
	speed = movement.speed;	
}

function Update () {
	/* lane shift code */
	shift();
	
	
	/*push pull code */		
	pushnpull();
}

function OnTriggerEnter(collision : Collider) {
	if(collision.gameObject.tag == "pushpull") {
		object = collision.gameObject;
		secondGrab = true;
		//print(collision.gameObject.name);
	}
}

function OnTriggerExit(other : Collider) {
	if (other.gameObject.tag == "pushpull") {
		object = null;
	}
}

function determineShift() {
	var object_trans = object.transform.position;

	//if in back lane, don't shift
	var shift : float;
	if (object_trans.z > laneMid)
		shift = 0;

	//shift as appropriate based on which lane object is in
	else
		shift = (object_trans.z < laneFront) ? SHIFTAMT : -SHIFTAMT;

	return shift;
}

function shift() {
		print(shiftable);

	if (Input.GetAxis(shiftAxis) || Input.GetKeyDown("s")) { //controller or 's' key
		if (object != null) {
			var shift = determineShift();
			var obj_copy = GameObject.Find(object+"_"+copy);
			var obj_copy2 = GameObject.Find(object+"_"+copy+"2");
			// no intersection => shift object by 'shift' amount
			
			bc_collider.center = new Vector3(object.collider.bounds.center.x,
				object.collider.bounds.center.y,
				(object.collider.bounds.center.z + shift));
			var tempColl = go.collider;
			
			if (shiftable) {
				for (var obj : GameObject in all_objects) {
					if (!obj.collider) {
						continue;
					}
					//print(tempColl.bounds.Intersects(this.collider.bounds));
					if (obj.tag != "Floor" && obj.tag != "Shadow" && obj.tag != "Player2"
					  && tempColl.bounds.Intersects(obj.collider.bounds)
					  && !obj.transform.IsChildOf(object.transform)
					  && obj.tag != copy) {
					  	print(obj);
						shiftable = false;
					}
				}
				object.transform.position.z += (!shiftable) ? 0 : shift;
				if (obj_copy != null)
					obj_copy.transform.position.z += (!shiftable) ? 0 : shift;
				if (obj_copy2 != null)
					obj_copy2.transform.position.z += (!shiftable) ? 0 : shift;
			}
		}
	}
}

function pushnpull() {
if (Input.GetButtonDown(pushAxis) || Input.GetKeyDown("z")) {
		grab = true;
	}
	if (Input.GetButtonUp(pushAxis) || Input.GetKeyUp("z")) {
		grab = false;
		secondGrab = false;
	}
	if (object != null && secondGrab) {
		var obj_copy = GameObject.Find(object+"_"+copy);
		var obj_copy2 = GameObject.Find(object+"_"+copy+"2");
		if (grab) {
			var rotation : Quaternion = this.transform.rotation;
			var dot = Quaternion.Dot(rotation, Quaternion(0.0, 1.0, 0.0, 0.0));
			var face = (dot > 0.5) ? true : false;
			var vect = (face) ? -1 : 1;
			this.rigidbody.freezeRotation = true; // suspect
			
			//cut speed in half while pushing or pulling 
			movement.speed = speed / 2;
			
			var delta = CharacterScript.xMotion*Time.deltaTime * vect;
			//shift position of object and copies by movement altered by -1 if necessary
			object.transform.position.x += delta; //looks to be right
			
			if (obj_copy != null)
				obj_copy.transform.position.x += delta;
			if (obj_copy2 != null)
				obj_copy2.transform.position.x += delta;
			
			this.transform.rotation.y = 0;
		}
	}
	if (!grab) {
		movement.speed = speed;
	}
}