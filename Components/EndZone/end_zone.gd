extends Area2D


@export var NextLevel:String = "res://Components/UI/main_menu.tscn"

func _on_body_entered(body: Node2D) -> void:
	if body is Head:
		Globals.changeScenes(NextLevel)
		#get_tree().call_deferred("change_scene_to_file",NextLevel)
		#get_tree().change_scene_to_file(NextLevel)
