extends Area2D
class_name Portal


@export var connectedPortal:Portal
var justTeleported:bool = false

func _ready() -> void:
	if connectedPortal == null:
		push_error("Portal has no connected Portal")




func _on_body_entered(body: Node2D) -> void:
	if body is Head:
		if justTeleported:
			return
			
		connectedPortal.justTeleported = true
		justTeleported = true
		
		if connectedPortal != null:
			body.teleportTo(connectedPortal.global_position)
		$Timer.start()
			


func _on_timer_timeout() -> void:
	justTeleported = false
	connectedPortal.justTeleported = false
