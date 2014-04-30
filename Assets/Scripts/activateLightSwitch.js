#pragma strict

var light_sources = new GameObject[0];
var player : Transform;
var distance : float;
var which_button : String;

function Start() {
	for (var i = 0; i < light_sources.length; i++) {
				light_sources[i].light.enabled = false;
	}
}

function Update() {
	which_button = "HankAction";
	distance = Mathf.Abs(this.transform.position.x - player.position.x);
	print(Input.GetButtonDown(which_button));
	if (distance < 1 && Input.GetButtonDown(which_button)) {
		for (var i = 0; i < light_sources.length; i++) {
			light_sources[i].light.enabled = true;
		}
	}
}
