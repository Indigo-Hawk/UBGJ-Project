extends Node

var head:Head = null
var PlayerPos:Vector2 = Vector2.ZERO




func _input(event: InputEvent) -> void:
	if event.is_action_pressed("RESET"):
		get_tree().reload_current_scene()

func changeScenes(FileName:String) ->void:
	get_tree().call_deferred("change_scene_to_file",FileName)
	call_deferred("_resetPos")
	if head != null:
		head.queue_free()


func _resetPos() -> void:
	PlayerPos = Vector2.ZERO
	print(PlayerPos)
