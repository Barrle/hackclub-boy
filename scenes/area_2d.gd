extends Area2D
var death : int = 0
@export var dead: Label
func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		Global.death +=1
		get_tree().call_deferred("reload_current_scene")
		if is_instance_valid(dead):
			dead.text = str(Global.death)
		
