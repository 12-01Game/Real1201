@script RequireComponent(BoxCollider)
@script RequireComponent(SphereCollider)

var respawnDistance : float = 3; // distance outside the darkness that sam runs to

var font : Font;

private var shouldShowTooltip : boolean;

function Start() {
	var samColliders = GameObject.Find("Sam").GetComponentsInChildren(Collider);
	
	for (var samCollider : Collider in samColliders) {
		Physics.IgnoreCollision(samCollider, GetComponent(BoxCollider));
	}
	
	GetComponent(BoxCollider).isTrigger = false;
	GetComponent(SphereCollider).isTrigger = true;
	
	shouldShowTooltip = false;
}

function OnTriggerEnter(other : Collider) {
	if (other.gameObject.tag == "Player") {
	
		// TODO uncomment this when turnAndRun is implemented
		var turnAndRun = other.gameObject.GetComponent(CharacterScript4Sam).turnAndRun; 
		
		turnAndRun(Mathf.Abs(other.transform.position.x - collider.bounds.min.x) + respawnDistance);
		shouldShowTooltip = true;
	}
}

function OnGUI() {
	if (shouldShowTooltip) {
		GUI.skin.font =  font;
		GUI.skin.label.fontSize = 36;
		GUI.color = Color.white;
	
		GUI.skin.label.alignment = TextAnchor.UpperCenter;
		var left = Screen.width*.01;
		var top = Screen.height*.85;
		var width = Screen.width;
		var height = Screen.height*.3;
		GUI.Label(Rect(left, top, width, height), "Sam can't proceed unless this part of the room is light!");
		
		shouldShowTooltip = false;
	}
}

