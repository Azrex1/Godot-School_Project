extends Area2D
class_name Interaction_Area

@export var action_name: String = "Interact"


var interact: Callable = func():
	pass


func _on_body_entered(body: Node2D):
	InteractionManager.register_area(self)


func _on_body_exited(body: Node2D) -> void:
	InteractionManager.unregister_area(self)
