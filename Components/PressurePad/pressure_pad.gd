extends Area2D


signal Pressed
signal Unpressed

var isPressed = false

var bodiesOnPad = []

func _on_body_entered(body: Node2D) -> void:
	bodiesOnPad.append(body)
	if !isPressed:
		isPressed = true
		$PressurePad.position.y = 8
		emit_signal("Pressed")
	
	


func _on_body_exited(body: Node2D) -> void:
	bodiesOnPad.erase(body)
	if isPressed and bodiesOnPad.size() == 0:
		isPressed = false
		$PressurePad.position.y = 3
		emit_signal("Unpressed")
