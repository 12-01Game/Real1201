#pragma strict
//CONSTANTS
//------------------------------------------------------

/*Amount to shift an object by */
private final var SHIFTAMT = 3.5;

/*Left side of initial lane (back wall) */
private final var lane_zero = 5;

/*Width of the entire floor */
private final var floor_width = 10;

/*Left side of middle lane */
private final var laneMid = lane_zero - floor_width / 3;

/*Left side of lane closest to camera */
private final var laneFront = laneMid - floor_width / 3;

/*Tag for gameobjects that are copies */
private final var copy = "Copy";

/*Axis for shifting */
private final var shiftAxis = "Shift";

/*Axis for pushing */
private final var pushAxis = "Push";

/*Axis for interaction with various objects */
private final var interactAxis = "Activate";

/*
private final var pushWin = "Push_Windows";

private final var pushMac = "Push_Mac";

private final var shiftWin = "Shift_Windows";

private final var shiftMac = "Shift_Mac";
*/

private var psychicPowers = false;

//PUBLIC
//------------------------------------------------------

/*Thing being pushed or pulled */
public static var object : GameObject;

/*A helper var for grab is a roundabout way of ignoring the larger trigger of any pushpull object */
public static var secondGrab : boolean;

/*Determines whether the object is allowed to be shifted between lanes - 
	altered by trigger on pushpull objects */
public static var shiftable = false;

/*Level index to choose which level to load next upon completion of a level */
public static var levelNum = 0;

/*The total number of levels present */
public static final var NUMLEVELS = 2;

/*Whether Sam is trying to grab */
public static var grab : boolean;

//public var style : GUISkin;

/*Whether the push/pull button is being pressed */
public static var pressed = false;


//PRIVATE
//------------------------------------------------------

/*Things that are shiftable */
private var things_to_shift;

/*All game objects that could be collided with */
private var all_objects;

/*Movement of Sam */
private var movement : CharacterScript4Sam;

/*Initial speed of Sam */
private var speed : float;

/*Test GameObject which is freely manipulable */
private var go : GameObject;

/*Collider for the above GameObject -
	 used to determine if shiftable object will collide with anything */
private var bc_collider : BoxCollider;

/*States whether the ladder of the firetruck is raised or not. */
private var raised = false;

/*Object being shifted - 
	Used to circumvent issue whether object being shifted causes triggerExit on Sam */
private var shiftObject : GameObject;

/*States whether the shiftbutton has been pressed - 
	prevents event from triggering more than once  */
private var shiftAxisUsed = false;

/*States whether an activated or shifted object is in motion - 
	Used to prevent spamming of activation or shifting of objects */
private var inMotion = false;

/*Whether the chair has been rotated the right way to shift into the table. */
private var chair_objective = false;

/*How many times the chair has been rotated */
private var chair_rotation_count = 0;

/*Says whether we want GUI messages to be shown */
private var call_gui = false;

/** 
Initializes manipulable gameobject: go
Sets go's tag to "Copy"
Finds all gameobjects
Finds all gameobjects with 'pushpull' tag -
	currently used with distance to see which pushpull object is referenced and then compares against 
	all gameobjects to see if a collision is imminent
Loops through all things that can shift - 
	This is done to make 2 copies of each GameObject representing different triggers.
	One trigger (copy) states whether the object will collide with other objects.
	The other trigger (copy2) states whether Sam can shift the object whlie it is in the other lane
Adds trigger to all pushpull objects in scene and adds script to each trigger
Adds collider to the manipulable gameobject to determine if a collision will happen
Sets initial value of grab to false 
Sets the initial value of secondGrab to false
Initializes movement to the CharacterScript
Initializes speed to CharacterScript initial speed
*/
function Start () {
	go = new GameObject("go");
	go.tag = copy;
	all_objects = GameObject.FindObjectsOfType(GameObject);
	things_to_shift = GameObject.FindGameObjectsWithTag("pushpull");
	
	for (var thing : GameObject in things_to_shift) {
		if (!thing.collider) {
			for (var newThing : Transform in thing.transform){
				if (newThing.gameObject.collider) {
					thing = newThing.gameObject;
					break;
				}
			}
		}
		var width = thing.collider.bounds.size.z / 2;
		var Copy2 = new GameObject(thing + "_"+copy+"2");
		Copy2.tag = copy;
		Copy2.AddComponent(BoxCollider);
		var bc2 = Copy2.GetComponent(BoxCollider);
		bc2.center = new Vector3(thing.collider.bounds.center.x,
			thing.collider.bounds.center.y,
			thing.collider.bounds.center.z);
		var width2 = thing.collider.bounds.size.z / 2;
		bc2.size = new Vector3(thing.collider.bounds.size.x+1, // just smaller than the width
					thing.collider.bounds.size.y,
					thing.collider.bounds.size.z + width + SHIFTAMT);
		bc2.isTrigger = true;
		
		//Copy.AddComponent(ShiftTriggerScript);
		Copy2.AddComponent(ShiftTriggerScript2);
	}
	
	go.AddComponent(BoxCollider);
	bc_collider = go.GetComponent(BoxCollider);
	grab = false;
	secondGrab = false;
	movement = GetComponent(CharacterScript4Sam);
	speed = movement.speed;	
}

function Update () {
	if (Input.GetButtonDown("A"))
		pressed = true;
	else if (Input.GetButtonUp("A"))
		pressed = false;


	/* lane shift code */
	shift();

	/* push pull code */		
	pushnpull();
	
	/* interact with objects code */
	interact();
}

/*Determines the appropriate amount to shift a pushpull object by - 
	It uses where the object is located in the scene based on 'lanes' */
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

/*Allows sam to shift a pushpull object if Sam entered the object's trigger zone and 
	either hit 's' on the keyboard or 'X' on an Xbox Controller 
CONTROLLER CODE CURRENTLY DOESN'T WORK - I'm working on it! Should be finished on Friday 4/25
*/
function shift() {
	//controller or 's' key
	if (pressed && (Mathf.Abs(Input.GetAxis("Shift")) >= 0.5) && !inMotion) {
		print("Shift");
		//print(Input.GetAxis("Shift"));
		if (object != null) {
			var shift = determineShift();
			var obj_copy = GameObject.Find(object+"_"+copy);
			var obj_copy2 = GameObject.Find(object+"_"+copy+"2");
			// no intersection => shift object by 'shift' amount
			bc_collider.center = new Vector3(object.collider.bounds.center.x,
				object.collider.bounds.center.y,
				(object.collider.bounds.center.z + shift));
			bc_collider.size.x = object.collider.bounds.size.x;
			bc_collider.size.y = object.collider.bounds.size.y;
			bc_collider.size.z = object.collider.bounds.size.z;
			var tempColl = go.collider;
			if (shiftable) {
				for (var obj : GameObject in all_objects) {
					if ((!obj.collider && !obj.GetComponentInChildren(Collider)) || 
						obj.tag == "Shadow_Wall" ||
						obj.name == "Scene" ||
						obj.tag == "Puzzle" ) { // if no collider for the object, skip}
						continue;
					}

					if (obj.tag != "Floor" && obj.tag != "Shadow" && obj.tag != "Player2"
					  && tempColl.bounds.Intersects(obj.collider.bounds)
					  && !obj.transform.IsChildOf(object.transform)
					  && obj.tag != copy) {
						shiftable = false;
					}
				}
				shiftObject = object;
				/*This section gives a delayed animation to the object shift */
				if (shiftObject != null && shiftable) {
					/*Initial objective checks */
					if (shiftObject.name == "Shift Chair") {
						if (chair_objective) {
							call_gui = false;
						}
						else {
							call_gui = true;
							//return;
						}
					}
					var vect = getVect();
					var duration = 1/Time.deltaTime;
					var yieldTime = .0001;
					var newYield = .05;
					for (var i = 0; i < duration; i++) {
						var y = (i/duration >= .9) ? newYield : yieldTime;
						inMotion = true;
						if (shiftObject != null) {
							shiftObject.transform.Translate(vect * Time.deltaTime * shift);
						}
						yield WaitForSeconds(y);
					}
					if (obj_copy != null)
						obj_copy.transform.position.z += shift;
					if (obj_copy != null)
						obj_copy2.transform.position.z += shift;
				}
				else if (!shiftable) {
					bc_collider.center = new Vector3(object.collider.bounds.center.x,
					object.collider.bounds.center.y,
					(object.collider.bounds.center.z));
				}
				inMotion = false;
				shiftObject = null;
				secondGrab = false;
			}
			//get the 'go' object outta here
			bc_collider.center = new Vector3(10000, 10000, 10000);
		}
	}
}

/*Allows sam to push and pull a pushpull object if Sam entered the object's trigger zone and 
	holds either 'z' on the keyboard or 'B' on an Xbox Controller 
CONTROLLER CODE CURRENTLY DOESN'T WORK - I'm working on it! Should be finished on Friday 4/25
*/
function pushnpull() {
	// "B" Button or 'z' key
	if ((Input.GetKeyDown("z") || pressed)) {
		print("Can Push");
		grab = true;
	}
	if (Input.GetKeyUp("z") || !pressed) {
		grab = false;
		secondGrab = false;
	}
	if (object != null && secondGrab && Input.GetAxis("Push")) {
		var obj_copy = GameObject.Find(object+"_"+copy);
		var obj_copy2 = GameObject.Find(object+"_"+copy+"2");
		if (grab && !inMotion) {
			var rotation : Quaternion = this.transform.rotation;
			var dot = Quaternion.Dot(rotation, Quaternion(0.0, 1.0, 0.0, 0.0));
			var face = (dot > 0.5) ? true : false;
			var vect = (!face) ? -1 : 1;
			//cut speed in half while pushing or pulling 
			movement.speed = speed / 2;
			
			/*granularity too large - SAM runs into box before box moves causing stuttering
				Current fix - somewhat larger trigger zone for object 
			*/
			var delta = CharacterScript4Sam.xMotion*Time.deltaTime; //* vect;
			/*shift position of object and copies by movement altered by -1 if necessary*/
			
			//Might want to parent the box to Sam instead but had trouble making it work
			object.transform.position.x += delta;
			
			if (obj_copy != null)
				obj_copy.transform.position.x += delta;
			if (obj_copy2 != null)
				obj_copy2.transform.position.x += delta;
		}
	}
	if (!grab) {
		movement.speed = speed;
	}
}
/*Allows sam to interact with particular objects based on case-by-case conditions and 
	either hit 'i' on the keyboard or 'A' (pending) on an Xbox Controller 
CONTROLLER CODE CURRENTLY DOESN'T WORK - I'm working on it! Should be finished on Friday 4/25
*/
function interact() {
	if ( /*Input.GetAxis(interactAxis) || */Input.GetKeyDown("i")) {
		var samPos = this.transform.position;
		var lightSwitch = GameObject.Find("Light Switch");
		if (lightSwitch != null)
			var lightSwitchPos = lightSwitch.transform.position;
		var lsd = Vector3.Distance(samPos, lightSwitchPos);
		/*TEST
		var lampPos = GameObject.Find("Floor Lamp").transform.position;
		var lpd = Vector3.Distance(samPos, lampPos);
		if (lpd < 5 && this.tag == "Player") {
			var light2 : Light = GameObject.Find("lamplight").light;
			light2.enabled = !light2.enabled;
		}
		END TEST */

		//object.name == "LightSwitch" && ... 
			//object will never get triggered to lightswitch so we use distance
		if (lsd < 10 && this.tag == "Player") { //Sam or hank triggering this??
		// Turn 'room' light on => level transition
			var light : Light = GameObject.Find("Room Light").light;
			light.intensity = (light.intensity == .2) ? .75 : 0.2;
			lightSwitch.transform.Rotate(Vector3.up * 180);
			yield WaitForSeconds(1);
			
			// Bedroom according to current project build settings: File->Build Settings
			levelNum = (levelNum + 1) % NUMLEVELS;
			Application.LoadLevel(levelNum);
			
			/*Likely keep a static var at the top of a script where we can increment each time we load
				as opposed to hardcoding level names */
		}

		
		if (object == null)
			return;
		
		if (object.name == "Fire Truck" && this.tag == "Player" && !inMotion) {
			//Raise / lower ladder
			var ladder1 = GameObject.Find("ladder");
			//var ladder2 = GameObject.Find("ladder2");
			var angle = (raised) ? -25 : 25; 
			var vect = getVect();
			var duration = 1/Time.deltaTime;
			var yieldTime = .01;
			var newYield = .1;
			for (var i = 0; i < duration; i++) {
				var y = (i/duration >= .9) ? newYield : yieldTime;
				inMotion = true;
				ladder1.transform.Rotate(vect*angle*Time.deltaTime);
				//ladder2.transform.Rotate(vect*angle*Time.deltaTime);
				yield WaitForSeconds(y);
			}
			inMotion = false;
			raised = !raised;
		}
		else if (object.name == "Floor 	Lamp" && this.tag == "Player") {
			//display text saying Sam is too short
		}
		else if (object.name == "Shift Chair" && this.tag == "Player" && !inMotion) {
			//don't allow shift until rotated; i.e., interacted with
			var shift_chair = GameObject.Find("Shift Chair");
			vect = getVect();
			for (i = 0; i < 1/Time.deltaTime; i++) {
				y = (i/duration >= .9) ? newYield : yieldTime;
				inMotion = true;
				shift_chair.transform.Rotate(Vector3.down*90.000*Time.deltaTime); // clamp basedon curr angle
				yield WaitForSeconds(y);
			}
			inMotion = false;
			chair_rotation_count = (chair_rotation_count + 1) % 4;
			chair_objective = (chair_rotation_count == 1) ? true : false;
		}
		
		/*... More? Possibly for interacting with other various objects like when Sam 
			tries to shift objects into other objects or just does weird stuff
		*/
	}
}

/*Used to enforce certain level prereqs 
TODO ensure message prints only once and fix bugs
*/
function valid() {
	var returned = true;
	if (object == null)
		return true;
/*
	if (object.name == "Shift Chair") {
		returned = (Mathf.Abs(object.transform.rotation.y - 360) < 5) ? true : false;
		if (!returned) {
			print("You should rotate the chair! Press 'i'!");
		}
	}
*/
		//more cases
	
	return returned;
}


function OnGUI() {
	if (object != null) {
		//GUI.Box(Rect(140, Screen.height-50, Screen.width-300, 120), "HEY THERE");
		//GUI.color = Color.yellow;
		//GUI.Box(Rect(9, 30, 500, 20), "hey", style);
	}
	//GUI.Box(Rect(9, 30, 30, 20), "hey", style.customStyles[0]);
	
	//if (call_gui)
		//GUI.Box(Rect(140, Screen.height-50, Screen.width-300, 120), "Hey Listen");
		//GUI.Label(Rect(140, Screen.height-50, Screen.width-300, 120), "sample text");
}


/*Used to accurately shift objects pending their rotation */
function getVect() {
	if (object == null)
		return Vector3.zero;
	
	var rot = object.transform.eulerAngles;
	if (Mathf.Abs(rot.y - 180) < 2) //firetruck
		return Vector3.back;
	//else if (Mathf.Abs(rot.y- 90)<2 && Mathf.Abs(rot.z- 270)<2)
	//	return Vector3.up;
	else if (Mathf.Abs(rot.y-90.0) < 2) // shift chair after rotation
		return Vector3.left;
	else if ((Mathf.Abs(rot.y - 360) % 360) < 2) //  general shift
		return Vector3.forward;
	return Vector3.zero;
		
}