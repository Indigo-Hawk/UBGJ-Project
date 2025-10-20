extends StaticBody2D


func Open() -> void:
	$CollisionShape2D.call_deferred("set_disabled",true)
	$MeshInstance2D.visible = false


func Close() -> void:
	$CollisionShape2D.call_deferred("set_disabled",false) 
	$MeshInstance2D.visible = true
	
