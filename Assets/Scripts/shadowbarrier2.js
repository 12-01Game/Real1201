#pragma strict

var shadow_barrier : GameObject;
var lightsource : GameObject;

function Update() {

	if(lightsource.light.enabled) {
		shadow_barrier.SetActive(false);
	}
	else {
		shadow_barrier.SetActive(true);
	}

}
