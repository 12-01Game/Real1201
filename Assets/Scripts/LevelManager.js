#pragma strict

private final var SAM_NAME 		: String = "Sam";
private final var HANK_NAME		: String = "Hank";
private final var SAM_SUCCESS	: String = "standard_idle_1";
private final var HANK_SUCCESS	: String = "walking";

private var cameraFade 			: CameraFade;

private var samAnimation		: Animation;
private var hankAnimation		: Animation;

var nextLevel : String;

function Start () {
	samAnimation = GameObject.Find(SAM_NAME).GetComponentsInChildren(Animation)[0];
	hankAnimation = GameObject.Find(HANK_NAME).GetComponentsInChildren(Animation)[0];
	cameraFade = GetComponent(CameraFade);
}

function OnTriggerEnter(collider : Collider) {
	if (collider.gameObject.tag == "Player") { //ensures it's Sam
		samAnimation.Play(SAM_SUCCESS);
        hankAnimation.Play(HANK_SUCCESS);
        yield WaitForSeconds (2);
        cameraFade.fadeOut();
        Application.LoadLevel(nextLevel);
	}
}