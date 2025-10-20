extends Node
class_name Body_Modification
var body:Body_Basic


func _ready() -> void:
	if  get_parent() is Body_Basic:
		body = get_parent()
		body.Mods.append(self)

func step(_delta: float)->void:
	pass
