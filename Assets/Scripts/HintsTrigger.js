#pragma strict

private static final var shadowWallHint =
	"Sam can not proceed until this part of the room is lit! Help Hank activate the light switch to continue.";

private static final var hint1 = 
	"Sam can use his flashlight to cast shadows for Hank to jump on";
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

private var callGUI = false;

var font : Font;

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
	else if (collider.gameObject.tag == "ShadowWall") {
		callGUI = true;
		displayHint = shadowWallHint;
	}
}

function OnTriggerExit(collider : Collider) {
	yield WaitForSeconds(5);
	callGUI = false;
}

function OnGUI() {
	if (callGUI) {
		GUI.skin.font = font;
		GUI.skin.label.fontSize = 36;
		GUI.color = Color.white;
		
		GUI.skin.label.alignment = TextAnchor.UpperCenter;
		var left = Screen.width*.01;
		var top = Screen.height*.85;
		var width = Screen.width;
		var height = Screen.height*.3;
		GUI.Label(Rect(left, top, width, height), displayHint);
	}
	
	
}