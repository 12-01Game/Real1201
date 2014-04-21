#pragma strict

public var TEST : ObjectManipulation;
private static var count = 0;
private var prev_col : GameObject;

function Start () {
}

function Update () {
	//print(this);
	//print(count);
}

function OnTriggerEnter(collision : Collider) {
	if (collision.gameObject.tag != "Player2" && collision.gameObject.tag != "Shadow") {
		if (prev_col != collision.gameObject) {
			count++;
			prev_col = collision.gameObject;
		}
		//if (count == 1)
			TEST.shiftable = true;
		//else 
			//TEST.shiftable = false;
		TEST.object = GameObject.Find(this.gameObject.name.Substring(0, this.gameObject.name.Length-31));
	}
}

function OnTriggerExit(collision : Collider) {
	if (collision.gameObject.tag != "Player2" && collision.gameObject.tag != "Shadow") {
		TEST.shiftable = false;
		TEST.object = null;
		if (prev_col == collision.gameObject) {
			count--;
			prev_col = null;
		}
	}
}