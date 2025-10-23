extends Node

var MusicPlayerScene = preload("res://Components/MusicPlayer/music_player.tscn")

var head:Head = null
var _musicPlayer:MusicPlayer = null

var PlayerPos:Vector2 = Vector2.ZERO


var MovingBackground:bool = true



func _ready() -> void:
	var newMusicPlayer:MusicPlayer = MusicPlayerScene.instantiate()
	add_child(newMusicPlayer)
	_musicPlayer = newMusicPlayer

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("RESET"):
		get_tree().reload_current_scene()
		if head != null:
			head.queue_free()

func changeScenes(FileName:String) ->void:
	if not ResourceLoader.exists(FileName):
		push_error("FileName for change scene is an invalid scene path", FileName)
		return
	get_tree().call_deferred("change_scene_to_file",FileName)
	call_deferred("_resetPos")
	if head != null:
		head.queue_free()


func _resetPos() -> void:
	PlayerPos = Vector2.ZERO
	print(PlayerPos)


func PlayMusic(index:int)->void:
	_musicPlayer.PlayTrack(index)
