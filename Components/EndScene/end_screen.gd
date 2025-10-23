extends Node

func _ready() -> void:
	Globals.isTimerOn = false
	var t = Globals.timer
	$Label4.text = "%02d:%02d:%02d" % [(t/3600), (t/60)%60,((t%60)/60.0)*100]

func _on_button_button_up() -> void:
	Globals.changeScenes("res://Components/UI/main_menu.tscn")
