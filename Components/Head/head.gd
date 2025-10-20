extends RigidBody2D
class_name Head

@export var SPEED = 100.0

var isFree = true

func _physics_process(delta: float) -> void:
	if !isFree:
		return
	
	var x = -Input.get_action_strength("LEFT") + Input.get_action_strength("RIGHT");
	if x != 0:
		linear_velocity.x += x * SPEED * delta
			
	Globals.PlayerPos = global_position
		
