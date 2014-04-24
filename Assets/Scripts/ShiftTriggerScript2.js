﻿#pragma strict

public var TEST : ObjectManipulation;

function Start () {
}

function Update () {
	//print(this);
	//print(count);
}

function OnTriggerEnter(collision : Collider) {
	if (collision.gameObject.tag != "Player2" && collision.gameObject.tag != "Shadow") {
		TEST.shiftable = true;
		TEST.object = GameObject.Find(this.gameObject.name.Substring(0, this.gameObject.name.Length-31));
		TEST.secondGrab = true;
		//print("triggered");
	}
}

function OnTriggerExit(collision : Collider) {
	if (collision.gameObject.tag != "Player2" && collision.gameObject.tag != "Shadow") {
		TEST.shiftable = false;
		TEST.object = null;
		TEST.secondGrab = false;
	}
}