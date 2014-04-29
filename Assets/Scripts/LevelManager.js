#pragma strict

private final var SAM_NAME 		: String = "Sam";
private final var HANK_NAME		: String = "Hank";
private final var samSuccess	: String = "standard_idle_1";
private final var hankSuccess	: String = "walking";

private var level 				: int;
private var CameraFade 			: CameraFade;

private var samAnimation		: Animation;
private var hankAnimation		: Animation;

private var scenes : String[] = ["BedRoom", "Living Room"];

function Start () {
	level = -1;
	samAnimation = GameObject.Find(SAM_NAME).GetComponentsInChildren(Animation)[0];
	hankAnimation = GameObject.Find(HANK_NAME).GetComponentsInChildren(Animation)[0];
}

function LevelRestart(){
	Application.LoadLevel(scenes[level]);
}

function LevelSuccess(){
	samAnimation.Play(samSuccess);
	hankAnimation.Play(hankSuccess);

	yield WaitForSeconds (3);

	LevelTransition();
}

function LevelTransition(){
	CameraFadeOut();
	NextLevel();
	CameraFadeIn();
}

/* Do not call this function directly, use LevelTransition instead */
function NextLevel(){
	if(level == scenes.length - 1){
		// FINAL CUTSCENE
	}else{
		level++;
		Application.LoadLevel(scenes[level]);
	}

}

function CameraFadeIn(){
	CameraFade.fadeOut();
}

function CameraFadeOut(){
	CameraFade.fadeIn();
}
