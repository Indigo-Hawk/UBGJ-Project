extends Control


func _on_button_button_up() -> void:
			get_tree().call_deferred("change_scene_to_file","res://test.tscn")


func _on_button_2_button_up() -> void:
	get_tree().quit(0)
