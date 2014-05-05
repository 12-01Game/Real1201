@script RequireComponent(AudioSource)

#pragma strict

private final var SAM_NAME 		: String = "Sam";
private final var HANK_NAME		: String = "Hank";
private final var SAM_SUCCESS	: String = "standard_idle_1";
private final var HANK_SUCCESS	: String = "walking";

private var cameraFade 			: CameraFade;

private var samAnimation				: Animator;
//private var hankAnimation		: Animation;

var nextLevel : String;

function Start () {
	//samAnimation = GameObject.Find(SAM_NAME).GetComponentsInChildren(Animation)[0];
	//hankAnimation = GameObject.Find(HANK_NAME).GetComponentsInChildren(Animation)[0];
	cameraFade = GetComponent(CameraFade);
	samAnimation = GameObject.Find("Sam").GetComponentsInChildren(Animator)[0];
}

function OnTriggerEnter(collider : Collider) {
	if (collider.gameObject.tag == "Player") { //ensures it's Sam
	
		// JUMP AROUND
		GameObject.Find("Music").audio.Stop();
		var script : CharacterScript4Sam = GameObject.Find("Sam").GetComponent(CharacterScript4Sam);
		script.shouldDisableControls = true;
		audio.Play();
		samAnimation.SetBool("jumpAround", true);
		
		//samAnimation.Play(SAM_SUCCESS);
        //hankAnimation.Play(HANK_SUCCESS);
        yield WaitForSeconds (8);
        cameraFade.fadeOut();
        Application.LoadLevel(nextLevel);
	}
}