/* Source: https://www.youtube.com/watch?v=rNghvoEbEkM */

var isStart=false;

function OnMouseEnter(){
	//change text color
	renderer.material.color=Color.green;
}

function OnMouseExit(){
	//change text color
	renderer.material.color=Color(0.33, 0.52, 0.6, 1);
}

function OnMouseUp(){
	//is this quit
	if (isStart==true) {
		//load the first level
		Application.LoadLevel(1);
	}
}

function Update(){
	//quit game if escape key is pressed
	if (Input.GetKey(KeyCode.Escape)) { 
		Application.Quit();
	}
}