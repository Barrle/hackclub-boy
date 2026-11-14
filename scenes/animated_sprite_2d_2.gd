extends AnimatedSprite2D
const SPEED = 3.0
#const JUMP_VELOCITY = -400.0
func _physics_process(delta):
	var input_direction=Input.get_axis("ui_left","ui_right")
	position.x += input_direction * SPEED
	
