#pragma strict

public var object : GameObject;
public var TEST : ObjectManipulation;

function Start () {

}

function Update () {

}

function OnTriggerEnter(collision : Collider) {
	if (collision.gameObject.tag != "Player2") {
		TEST.shiftable = false;
	}
}

function OnTriggerExit(collision : Collider) {
	if (collision.gameObject.tag != "Player2") {
		TEST.shiftable = true;
	}
}