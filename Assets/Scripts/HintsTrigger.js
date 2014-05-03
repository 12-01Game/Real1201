#pragma strict

private static final var hint1 = 
	"Let Hank jump on the shadows you cast on certain objects. The goal is to dispel the large shadows preventing Sam from reaching the door.";
private static final var hint2 = 
	"Hank needs to dispel the large shadow by flipping the light switch. Press X! Objects that you can interact with glow brightly.";
private static final var hint3 = 
	"You can move certain objects into your path by holding X and pushing up or down with the left control stick.";
private static final var hint4 = 
	"You can then push and pull objects by holding X and moving left or right with the left control stick.";
private static final var hint5 = 
	"You might need objects from previous puzzles to overcome future puzzles!";

private static var displayHint : String;

private static var hints : Array;

private var callGUI = true;

function Start () {
	hints = new Array();
	hints.push(hint1);
	hints.push(hint2);
	hints.push(hint3);
	hints.push(hint4);
	hints.push(hint5);
	
}

function Update () {

}

function OnTriggerStay(collider : Collider) {

	if (collider.gameObject.tag == "Tooltip") {
		callGUI = true;
		var name = collider.gameObject.name.Substring(4);
		var index = int.Parse(name);
		
		displayHint = hints[index-1];
	}
}

function OnTriggerExit(collider : Collider) {
	yield WaitForSeconds(1);
	callGUI = false;
}

function OnGUI() {
	if (callGUI)
		GUI.Label(Rect(140, Screen.height-50, Screen.width-300, 120), displayHint);
}