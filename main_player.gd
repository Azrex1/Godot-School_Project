extends CharacterBody2D


const SPEED = 500

func get_input():
	var input_direction = Input.get_vector("Left","Right","Up","Down")
	velocity = input_direction * SPEED

func _physics_process(delta):
	get_input()
	move_and_slide()
	velocity.x 
