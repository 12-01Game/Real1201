#pragma strict

private var TEST : ObjectManipulation;
private var shade : Shader;
private var standard : Shader;

function Start () {
	shade = Shader.Find("Self-Illumin/Outlined Diffuse");
	standard = Shader.Find("Diffuse");
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
		//var texture = renderer.material.mainTexture;
		//Debug.Log(texture);
		
		TEST.object.renderer.material.shader = shade;
		//TEST.object.gameObject.renderer.material.mainTexture = texture;
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
		//var texture = renderer.material.mainTexture;
		//Debug.Log(texture);
		
		TEST.object.gameObject.renderer.material.shader = standard;
		//TEST.object.gameObject.renderer.material.mainTexture = texture;
		TEST.object = null;
	}
}
