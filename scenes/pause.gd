extends Node

var n : int = 1
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action("ui_cancel") and not event.is_echo():
		if n == 1:
			n = 0
		elif n==0 :
			n=1	
		toggle_pause()
func toggle_pause() -> void:
	if n == 1:
		get_tree().paused = false 		
		$PauseSprite.visible = false
	elif n  == 0:
		get_tree().paused = true
		$PauseSprite.visible = true	
