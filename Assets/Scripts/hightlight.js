#pragma strict

function Start () {

}

function Update () {

}

function OnMouseOver()
{
	renderer.material.shader = Shader.Find("Self-Illumin/Outlined Diffuse");
}

function OnMouseExit()
{
	renderer.material.shader = Shader.Find("Diffuse");
}