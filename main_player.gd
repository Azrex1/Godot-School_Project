extends CharacterBody2D
@onready var animated_sprite = $AnimatedSprite2D

const SPEED = 500
var Horizintal_Movment
var touching_wall = false
func _physics_process(delta):
	Horizintal_Movment = Input.get_axis("Left","Right")
	velocity.x = 300 * Horizintal_Movment
	move_and_slide()
	handle_movment_animations()

func handle_movment_animations():
	if Horizintal_Movment == 0:
		animated_sprite.play("Idle")
	if Horizintal_Movment == 1 && touching_wall == false:
		animated_sprite.play("Walking")
		animated_sprite.flip_h = true
	if Horizintal_Movment == -1 && touching_wall == false:
		animated_sprite.play("Walking")
		animated_sprite.flip_h = false





func _on_area_2d_area_entered(area: Area2D):
	if area.is_in_group("End_of_Rooms"):
		touching_wall = true
