#pragma strict

var light_sources = new GameObject[0];
var player : Transform;
var distanceX : float;
var distanceY : float;

var sfx		  : AudioClip;

private var on : boolean = false;
private var which_button : String;
private var defaultShader;
private var highlightedShader;

function Awake() {
    defaultShader = Shader.Find("Diffuse");
    highlightedShader = Shader.Find("Self-Illumin/Outlined Diffuse");

	for (var i = 0; i < light_sources.length; i++) {
		light_sources[i].light.enabled = false;
	}
}

function Update() {
	which_button = "HankAction";
	distanceX = Mathf.Abs(this.transform.position.x - player.position.x);
	distanceY = Mathf.Abs(this.transform.position.y - player.position.y);
	if (!on && distanceX < 1 && distanceY < 1) {
		renderer.material.shader = highlightedShader;
		if (Input.GetButtonDown(which_button)) {
			audio.PlayOneShot(sfx);
            on = true;
			for (var i = 0; i < light_sources.length; i++) {
				light_sources[i].light.enabled = true;
                light_sources[i].GetComponent(shadowbarrier2).TurnOn();
			}
		}
	} else {
		renderer.material.shader = defaultShader;
	}
}
