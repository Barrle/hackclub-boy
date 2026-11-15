extends Area2D
var lvl : int = 0
@export var level: Label
func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		get_tree().call_deferred("change_scene_to_file", "res://lvl2.tscn")
		Global.level_2 +=1
		if is_instance_valid(level):
			level.text = str(Global.level_2)
