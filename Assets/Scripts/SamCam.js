static final var BINGO_NAME 		: String = "Bingo";
static final var HANK_NAME			: String = "Hank";

private var bingo					: Transform;
private var hank 					: Transform;
var texture 						: Texture;

private var subjectX 				: float;
private var cameraX 				: float;

private var distance 				: float = 30.0;		// This will change depending upon where Hank is;
private static final var height	 	: float = 5.6;

function Start () {
	bingo = GameObject.Find(BINGO_NAME).transform;
	hank = GameObject.Find(HANK_NAME).transform;
	
	transform.position.y = height;
	transform.position.z = -1 * distance;
}

function Update () {
	
	var subjectY = height;
	var subjectZ = -1 * distance;
	if (hank.position.y > 12) {
		subjectY = subjectY + 2;
		subjectZ = subjectZ - 12;
	}

	// Get the X position of bingo
	subjectX = bingo.position.x;
	
	// Get the camera position
	cameraX = transform.position.x;
	cameraY = transform.position.y;
	cameraZ = transform.position.z;
	
	timeDelta = Time.deltaTime * 3;
	transform.position = Vector3.Lerp(Vector3(cameraX, cameraY, cameraZ), Vector3(subjectX, subjectY, subjectZ), timeDelta);
	// transform.position.x = subject.position.x;
}

function OnGUI() {
	//GUI.DrawTexture(Rect(0, 0 , Screen.width, Screen.height), texture);
}