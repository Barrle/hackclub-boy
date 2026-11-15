extends CollisionShape2D
@onready var character = get_node("Main/CharacterBody2D")
func _ready() -> void:
	position = character.global_position
func _on_body_entered(body):
	if body == character:
		character.global_position = position	
