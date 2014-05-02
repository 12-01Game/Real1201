#pragma strict

var light_sources = new GameObject[0];
var player : Transform;
var distanceX : float;
var distanceY : float;
var which_button : String;
private static var DEFAULT_SHADER = Shader.Find("Diffuse");
private static var HIGHLIGHTED_SHADER = Shader.Find("Self-Illumin/Outlined Diffuse");

function Start() {
	for (var i = 0; i < light_sources.length; i++) {
				light_sources[i].light.enabled = false;
	}
}

function Update() {
	which_button = "HankAction";
	distanceX = Mathf.Abs(this.transform.position.x - player.position.x);
	distanceY = Mathf.Abs(this.transform.position.y - player.position.y);
	if (distanceX < 1 && distanceY < 1){
		renderer.material.shader = HIGHLIGHTED_SHADER;
		if (Input.GetButtonDown(which_button)) {
			for (var i = 0; i < light_sources.length; i++) {
				light_sources[i].light.enabled = true;
			}
		}
	} else {
		renderer.material.shader = DEFAULT_SHADER;
	}
}
