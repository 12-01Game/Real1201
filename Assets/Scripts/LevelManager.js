#pragma strict

private final var SAM_NAME 		: String = "Sam";
private final var HANK_NAME		: String = "Hank";
private final var samSuccess	: String = "standard_idle_1";
private final var hankSuccess	: String = "walking";

private var level 				: int;
private var cameraFade 			: CameraFade;

private var samAnimation		: Animation;
private var hankAnimation		: Animation;

private var scenes : String[] = ["Level1", "Level2", "Level3"];

function Start () {
	level = 0;
	samAnimation = GameObject.Find(SAM_NAME).GetComponentsInChildren(Animation)[0];
	hankAnimation = GameObject.Find(HANK_NAME).GetComponentsInChildren(Animation)[0];
	cameraFade = GetComponent(CameraFade);
}

function OnTriggerEnter(collider : Collider) {
	if (collider.gameObject.tag == "Player") { //ensures it's Sam
		LevelSuccess();
		print("'Murica FUCK YEA!");
	}
}

function LevelRestart(){
	Application.LoadLevel(scenes[level]);
}

function LevelSuccess(){
	samAnimation.Play(samSuccess);
	hankAnimation.Play(hankSuccess);

	yield WaitForSeconds (2);

	LevelTransition();
}

/* Do not call this function directly, use LevelSuccess instead */
function LevelTransition(){
	CameraFadeOut();
	NextLevel();
	CameraFadeIn();
}

/* Do not call this function directly, use LevelTransition instead */
function NextLevel(){
	if(level == scenes.length - 1){
		// FINAL CUTSCENE
		print("FINAL??");
	}else{
		level++;
		Application.LoadLevel(scenes[level]);
	}
}

function CameraFadeIn(){
	cameraFade.fadeOut();
}

function CameraFadeOut(){
	cameraFade.fadeIn();
}
