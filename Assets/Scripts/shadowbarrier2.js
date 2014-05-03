#pragma strict

var shadow_barrier : GameObject;
var lightsource : GameObject;

function Awake() {
    light.enabled = false;
}

function TurnOn() {
	shadow_barrier.SetActive(false);
	light.enabled = true;
}
