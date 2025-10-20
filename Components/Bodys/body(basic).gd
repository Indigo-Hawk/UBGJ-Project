extends CharacterBody2D
class_name Body_Basic

signal HeadDettached

@export var isStart = false
@export var LauncherStrength:float = 600
var hasHead = false

var switch:Switch = null

var Mods:Array[Body_Modification] = []

func _ready() -> void:
	$HeadPoint/Launcher.LaunchStrength = LauncherStrength
	if isStart:
		Attach(null)

func _physics_process(delta: float) -> void:
	
	for mod in Mods:
		mod.step(delta)
		
	move_and_slide()
	
	if hasHead:
		Globals.PlayerPos = global_position


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Head:
		Attach(body)
	if body is Switch:
		switch = body



func Attach(head:Head) -> void:
	if head != null:
		head.queue_free()
	$HeadPoint.visible = true
	hasHead = true
	$HeadPoint/Launcher.process_mode = Node.PROCESS_MODE_INHERIT

func Detatch() -> void:
	
	hasHead = false
	$HeadPoint.visible = false
	emit_signal("HeadDettached")


func _on_launcher_launched() -> void:
	Detatch()
	$HeadPoint/Launcher.process_mode = Node.PROCESS_MODE_DISABLED
