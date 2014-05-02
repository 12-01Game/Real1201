static final var BINGO_NAME 		: String = "Bingo";
static final var HANK_NAME			: String = "Hank";

private var sam   					: Transform;
private var hank 					: Transform;
var texture 						: Texture;

private var subjectX 				: float;
private var cameraX 				: float;

private var distance 				: float = 30.0;		// This will change depending upon where Hank is
private var distToGo				: float = 0.0;
private var isZoomedOut				: boolean = false;
private static final var height	 	: float = 5.6;

function Start () {
	sam = GameObject.Find(BINGO_NAME).transform;
	hank = GameObject.Find(HANK_NAME).transform;
}

function LateUpdate () {

	subjectX = sam.position.x;
	cameraX = transform.position.x;
	
	timeDelta = Time.deltaTime * 3;
	transform.position = Vector3.Lerp(Vector3(cameraX, height, -1 * distance), Vector3(subjectX, height, -1 * distance), timeDelta);
	distToGo = distToGo - (distToGo * timeDelta);
	// transform.position.x = subject.position.x;
}

function OnGUI() {
	GUI.DrawTexture(Rect(0, 0 , Screen.width, Screen.height), texture);
}