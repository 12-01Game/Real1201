/* Source: https://www.youtube.com/watch?v=rNghvoEbEkM */

var isStart=false;

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

function Start() {
	// start unselected
	renderer.material.color = Color(1, 1, 1, .25);
}

function Update(){
	//quit game if escape key is pressed
	if (Input.GetKey(KeyCode.Escape)) { 
		Application.Quit();
	}
}