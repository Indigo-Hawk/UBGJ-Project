extends Body_Modification

@export var HoverSpeed:float = 300

func step(_delta: float) -> void:
	if !body.hasHead:
		return
		
	var y = Input.get_action_strength("LEFT") - Input.get_action_strength("RIGHT");
	if y != 0:
		body.velocity.y = y * HoverSpeed
	else:
		body.velocity.y /= 2
	
	if abs(body.velocity.y) < 1:
		body.velocity.y = 0
	
	
