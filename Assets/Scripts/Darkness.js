@script RequireComponent(BoxCollider)
@script RequireComponent(SphereCollider)

var respawnDistance : float = 3;

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
		other.gameObject.turnAndRun(Mathf.Abs(other.transform.position.x - gameObject.bounds.min.x) + respawnDistance);
	}
}
