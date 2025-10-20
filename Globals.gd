extends Node

var head:Head = null
var PlayerPos:Vector2 = Vector2.ZERO




func changeScenes(FileName:String) ->void:
	get_tree().call_deferred("change_scene_to_file",FileName)
	call_deferred("_resetPos")
	if head != null:
		head.queue_free()


func _resetPos() -> void:
	PlayerPos = Vector2.ZERO
	print(PlayerPos)
