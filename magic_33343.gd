extends Area2D


@export var block_to_move: CharacterBody2D
var pos = Vector2(202 , -16)

func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		
		if is_instance_valid(block_to_move):
			block_to_move.set_deferred("global_position", pos)
