extends StaticBody2D


func Open() -> void:
	$CollisionShape2D.call_deferred("set_disabled",true)
	$Platforms.visible = false


func Close() -> void:
	$CollisionShape2D.call_deferred("set_disabled",false) 
	$Platforms.visible = true
	
