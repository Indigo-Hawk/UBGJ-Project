extends RigidBody2D
class_name Head

@export var SPEED = 100.0

var isFree = true

func _physics_process(delta: float) -> void:
	
	$Control.rotation = -rotation
	
	if !isFree:
		return
	
	var x = -Input.get_action_strength("LEFT") + Input.get_action_strength("RIGHT")
	if x != 0:
		linear_velocity.x += x * SPEED * delta
			
	Globals.PlayerPos = global_position
	
	if abs(linear_velocity.length()) < 1:
		
		if $Timer.get_time_left() == 0:
			
			$Timer.start()
	if abs(linear_velocity.length()) > 1:
		$Timer.stop()
		$Control/Label.visible = false
		


func _on_timer_timeout() -> void:
	$Control/Label.visible = true 
