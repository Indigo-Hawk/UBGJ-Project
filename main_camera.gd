extends Camera2D

@export var MAXSPEED:float = 500
@export var DISTANCESCALE:int = 100

func _ready() -> void:
	$Grid/AnimationPlayer.play("Move")

func _process(delta: float) -> void:
	var dist =global_position.distance_to(Globals.PlayerPos)
	if dist > 10:
		global_position += global_position.direction_to(Globals.PlayerPos) * delta * MAXSPEED * (dist/DISTANCESCALE )
