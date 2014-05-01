static final var SAM_NAME : String = "Sam";

private var subject : Transform;
var texture : Texture;

function Start () {
	subject = GameObject.Find(SAM_NAME).transform;
}
function LateUpdate () {
	transform.position.x = subject.position.x;
}

function OnGUI() {
	GUI.DrawTexture(Rect(0, 0 , Screen.width, Screen.height), texture);
}