@script RequireComponent(BoxCollider)
@script RequireComponent(SphereCollider)

var respawnDistance : float = 3; // distance outside the darkness that sam runs to

function Start() {
	var samColliders = GameObject.Find("Sam").GetComponentsInChildren(Collider);
	
	for (var samCollider : Collider in samColliders) {
		Physics.IgnoreCollision(samCollider, GetComponent(BoxCollider));
	}
	
	GetComponent(BoxCollider).isTrigger = false;
	GetComponent(SphereCollider).isTrigger = true;
}

function OnTriggerEnter(other : Collider) {
	if (other.gameObject.tag == "Player") {
	
		// TODO uncomment this when turnAndRun is implemented
		var turnAndRun = other.gameObject.GetComponent(CharacterScript4Sam).turnAndRun; 
		
		turnAndRun(Mathf.Abs(other.transform.position.x - collider.bounds.min.x) + respawnDistance);
	}
}
