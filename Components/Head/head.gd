extends RigidBody2D
class_name Head

@export var SPEED = 100.0

var isFree = true

var lastDelta:float= 0
var wishDirection:Vector2 = Vector2.ZERO

var teleporting:bool = false
var teleportingPos:Vector2 = Vector2.ZERO

func _physics_process(delta: float) -> void:
	lastDelta = delta
	
	var x = -Input.get_action_strength("LEFT") + Input.get_action_strength("RIGHT")
	wishDirection.x = x

func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	
	if teleporting:
		global_position = teleportingPos 
		teleporting = false   
	
	$Control.rotation = -rotation
	
	if !isFree:
		print("3")
		return
	
	
	if wishDirection.x != 0:
		linear_velocity.x += wishDirection.x * SPEED * lastDelta
			
	Globals.PlayerPos = global_position
	
	if abs(linear_velocity.length()) < 1:
		if $Timer.get_time_left() == 0:
			$Timer.start()
			
	if abs(linear_velocity.length()) > 1:
		$Timer.stop()
		$Control/Label.visible = false



func teleportTo(POS:Vector2) -> void:
	teleporting = true
	teleportingPos = POS
	#linear_velocity *= 0

func _on_timer_timeout() -> void:
	$Control/Label.visible = true 
