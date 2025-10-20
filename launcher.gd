extends Node2D

signal Launched

var HeadScene = preload("res://head.tscn")

@export var LaunchStrength:float = 600  #can be overriden by Body

func _physics_process(_delta: float) -> void:
	$MousePos.global_position = get_global_mouse_position()
	_updateLine()
	if Input.is_action_just_pressed("ACTION"):
		
		spawnHead()
		emit_signal("Launched")


func spawnHead() -> void:
	var newHead:Head = HeadScene.instantiate()
	newHead.global_position = global_position
	newHead.linear_velocity = LaunchStrength * global_position.direction_to(get_global_mouse_position())
	get_tree().root.add_child(newHead)
	Globals.head = newHead
	

func _updateLine() -> void:
	$Line2D.clear_points()
	for i in range(0,100,5):
		var point:Vector2
		point.x =LaunchStrength*global_position.direction_to(get_global_mouse_position()).x*i*0.01
		point.y = LaunchStrength*global_position.direction_to(get_global_mouse_position()).y*i*0.01 + 0.055 * i**2
		#print(point)
		$Line2D.add_point(point)
