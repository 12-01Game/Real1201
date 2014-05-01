#pragma strict

private var TEST : ObjectManipulation;

function Start () {
}

function Update () {
}

function OnTriggerStay(collision : Collider) {
	if (collision.gameObject.tag != "Player2" && collision.gameObject.tag != "Shadow") {
		TEST.shiftable = true;
		TEST.object = GameObject.Find(this.gameObject.name.Substring(0, this.gameObject.name.Length-31));
		TEST.secondGrab = true;
		
		/*
		var halo = TEST.object.GetComponent("Halo");
		if (!halo)
			TEST.object.AddComponent("Halo");
		*/
		TEST.object.renderer.material.shader = Shader.Find("Self-Illumin/Outlined Diffuse");
	}
}

function OnTriggerExit(collision : Collider) {
	if (collision.gameObject.tag != "Player2" && collision.gameObject.tag != "Shadow") {
		TEST.shiftable = false;
		TEST.secondGrab = false;
		
		/*
		var halo = TEST.object.GetComponent("Halo");
		if (halo)
			Destroy(halo);
		*/
		TEST.object.gameObject.renderer.material.shader = Shader.Find("Diffuse");
		TEST.object = null;
	}
}
