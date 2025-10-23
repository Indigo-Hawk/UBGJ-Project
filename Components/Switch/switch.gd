extends StaticBody2D
class_name Switch

signal switchedOn
signal switchedOff

var isOn:bool = false

func switch():
	if isOn:
		isOn = false
		emit_signal("switchedOff")
		$Node2D.rotation = 45
	else:
		isOn = true
		emit_signal("switchedOn")
		$Node2D.rotation = -45
	
