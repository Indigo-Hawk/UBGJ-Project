extends Body_Modification

@export var WalkSpeed:float = 300

func step(_delta: float) -> void:
	if !body.hasHead:
		return
		
	var x = -Input.get_action_strength("LEFT") + Input.get_action_strength("RIGHT");
	if x != 0:
		body.velocity.x = x * WalkSpeed
	else:
		body.velocity.x /= 2
	
	if abs(body.velocity.x) < 1:
		body.velocity.x = 0
	
	
	
