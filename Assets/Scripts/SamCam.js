static final var BINGO_NAME : String = "Bingo";

private var subject : Transform;
var texture : Texture;

private var subjectX : float;
private var cameraX : float;

private static final var distance : float = 30.0;
private static final var height	 : float = 5.6;

function Start () {
	subject = GameObject.Find(BINGO_NAME).transform;
}

function LateUpdate () {

	subjectX = subject.position.x;
	cameraX = transform.position.x;
	
	transform.position = Vector3.Lerp (Vector3(cameraX, height, -1 * distance), Vector3(subjectX, height, -1 * distance), Time.deltaTime * 4);
	// transform.position.x = subject.position.x;
}

function OnGUI() {
	GUI.DrawTexture(Rect(0, 0 , Screen.width, Screen.height), texture);
}