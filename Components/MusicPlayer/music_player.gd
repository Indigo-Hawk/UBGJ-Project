extends AudioStreamPlayer
class_name MusicPlayer

var musicFiles:Array[AudioStreamMP3] = [
	preload("res://Audio/bg_menu.mp3"),
	preload("res://Audio/bg_game.mp3")
]



func PlayTrack(index:int)->void:
	stream = musicFiles[index]
	play()
