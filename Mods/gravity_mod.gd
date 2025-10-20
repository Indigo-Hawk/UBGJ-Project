extends Body_Modification

@export var gravityScale:float = 50.0

func step(_delta: float) ->void:
	
	body.velocity.y += gravityScale
	if body.is_on_floor() and body.velocity.y < 0:
		body.velocity.y = 0
