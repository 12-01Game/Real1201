@script RequireComponent(AudioSource)

var goToLevel : String;

function Start() {
	renderer.material.mainTexture.Play();
	audio.Play();
}

function Update() {
	if (!renderer.material.mainTexture.isPlaying) {
		Application.LoadLevel(goToLevel);
	}
}