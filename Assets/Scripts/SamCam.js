static final var SAM_NAME : String = "Sam";

private var subject : Transform;

function Start () {
	subject = GameObject.Find(SAM_NAME).transform;
}
function LateUpdate () {
	transform.position.x = subject.position.x;
}