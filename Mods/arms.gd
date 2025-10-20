extends Body_Modification


func step(_delta: float) -> void:
	if !body.hasHead:
		return
	
	if Input.is_action_just_pressed("INTERACT") and body.switch != null:
		body.switch.switch()
		
