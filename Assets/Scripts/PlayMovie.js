function Start() {
	renderer.material.mainTexture.Play();
}

function Update() {
	if (!renderer.material.mainTexture.isPlaying) {
		Application.LoadLevel("MainMenu");
	}
}