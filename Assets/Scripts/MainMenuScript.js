/* Source: https://www.youtube.com/watch?v=rNghvoEbEkM */

var isStart=false;
private var objColor : Color;
private var fadeOut : boolean;
private var origAValue : float;
private var mesh : TextMesh;
private var startPressed : boolean;
private var aPressed : boolean;

var buttonMap : GUITexture;
/*
function OnMouseEnter(){
	//change text color
	renderer.material.color=Color(1, 1, 1, 1);
}

function OnMouseExit(){
	//change text color
	renderer.material.color=Color(1, 1, 1, .25);
}

function OnMouseUp(){
	//is this quit
	if (isStart==true) {
		//load the first level
		Application.LoadLevel(1);
	}
}
*/


function Start() {
	// start unselected
	renderer.material.color = Color(1, 1, 1, .75);
	mesh = GetComponent(TextMesh);
	objColor = mesh.color;
	fadeOut = true;
	origAValue = mesh.color.a;
	buttonMap.active = false;
}

function Update(){
	//quit game if escape key is pressed
	if (Input.GetKey(KeyCode.Escape)) { 
		Application.Quit();
	}
	Fade();
	if (Input.GetButtonDown("Start")) {
		startPressed = true;
	}
	if (Input.GetButtonDown("pushAStartMenu")) {
		aPressed = true;
	}
	
	if (startPressed && aPressed) {
		Application.LoadLevel("Level1");
	}
	else if (startPressed) {
		mesh.text = "OK? PRESS A";
		buttonMap.active = true;
	}
	
}

function Fade() {
	if (fadeOut) {
		while (mesh.color.a > 0) {
			mesh.color.a -= .15*Time.deltaTime;//.003;//Time.deltaTime*.5;
			yield WaitForSeconds(.1);
			//yield;
		}
		fadeOut = false;
	}
	else {
		while (mesh.color.a < origAValue) {
			mesh.color.a += .15*Time.deltaTime;//.003;//Time.deltaTime*.5;
			yield WaitForSeconds(.1);
			// yield;
		}
		fadeOut = true;
	}
}