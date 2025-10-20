extends Control

func _ready() -> void:
	$Main/Title.play("default")


func _on_button_button_up() -> void:
			get_tree().call_deferred("change_scene_to_file","res://Levels/test.tscn")


func _on_button_2_button_up() -> void:
	get_tree().quit(0)


func _on_credits_button_up() -> void:
	pass # Replace with function body.


func _on_settings_button_up() -> void:
	$Main.visible = false
	$Settings.visible = true




func _on_h_slider_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(0,value)


func _on_check_button_toggled(toggled_on: bool) -> void:
	if toggled_on:
		Globals.MovingBackground = true
	else:
		Globals.MovingBackground = false
		get_tree().call_group("Camera","stopBackground")


func _on_settings_back_pressed() -> void:
	$Main.visible = true
	$Settings.visible = false
