extends Control


func _on_button_button_up() -> void:
			get_tree().call_deferred("change_scene_to_file","res://Levels/test.tscn")


func _on_button_2_button_up() -> void:
	get_tree().quit(0)


func _on_credits_button_up() -> void:
	pass # Replace with function body.


func _on_settings_button_up() -> void:
	pass # Replace with function body.
