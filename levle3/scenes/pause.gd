extends Node

var n : int = 1
var e: int=2

func _unhandled_input(event: InputEvent) -> void:
	get_tree().paused = false
	$PauseSprite.visible = false
	if event.is_action("ui_cancel") and not event.is_echo():
		e+=1
		
		toggle_pause()
func toggle_pause() -> void:
	if e%2==0:
		get_tree().paused = false 		
		$PauseSprite.visible = false
	elif e%2!=0:
		get_tree().paused = true
		$PauseSprite.visible = true	
