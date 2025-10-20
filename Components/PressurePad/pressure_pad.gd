extends Area2D


signal Pressed
signal Unpressed

var isPressed = false

var bodiesOnPad = []

func _on_body_entered(body: Node2D) -> void:
	bodiesOnPad.append(body)
	if !isPressed:
		isPressed = true
		emit_signal("Pressed")
	
	


func _on_body_exited(body: Node2D) -> void:
	bodiesOnPad.erase(body)
	if isPressed and bodiesOnPad.size() == 0:
		isPressed = false
		emit_signal("Unpressed")
