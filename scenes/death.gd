extends Label
func _ready() -> void:
	text = str(Global.death)
	if Global.death <= 5 and Global.death <6:
		label_settings.font_color = Color.WHITE
	elif Global.death <=10	:
		label_settings.font_color = Color.GREEN
	elif Global.death <=15	:
		label_settings.font_color = Color.YELLOW	
	elif Global.death <= 20:
		label_settings.font_color = Color.RED
