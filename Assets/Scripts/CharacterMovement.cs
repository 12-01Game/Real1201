using UnityEngine;
using System.Collections;

public class CharacterMovement : MonoBehaviour 
{
	public float maxSpeed = 6.0f;
	public bool facingRight = true;
	public float moveDirection;

	public float jumpSpeed = 600.0f;
	public bool grounded = false;
	public Transform groundCheck;
	public float groundRadius = 0.2f;
	public LayerMask whatIsGround;

	void Awake()
	{
		groundCheck = GameObject.Find ("GroundCheck").transform;
	}

	// Use this for initialization
	void FixedUpdate () 
	{
		grounded = Physics2D.OverlapCircle(groundCheck.position, groundRadius, whatIsGround);

		rigidbody.velocity = new Vector2(moveDirection * maxSpeed, rigidbody.velocity.y);


		if(moveDirection > 0.0f && !facingRight)
		{
			Flip();
		}

		else if(moveDirection < 0.0f && facingRight)
		{
			Flip();
		}
	}
	
	// Update is called once per frame
	void Update () 
	{
		moveDirection = Input.GetAxis ("Horizontal");

		if(grounded && Input.GetButtonDown("Jump"))
		{
			rigidbody.AddForce(new Vector2(0, jumpSpeed));

		}
	
	}

	void Flip()
	{
		facingRight = !facingRight;

		transform.Rotate (Vector3.up, 180.0f, Space.World);
	}
}
