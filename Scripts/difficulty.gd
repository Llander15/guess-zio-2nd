extends Node2D

func backButtonPressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")

func diff1Pressed() -> void:
	#add a function that changes the difficulty diff1
	get_tree().change_scene_to_file("res://Scenes/game.tscn")

func diff2Pressed() -> void:
	#add a function that changes the difficulty diff2
	get_tree().change_scene_to_file("res://Scenes/game.tscn")

func diff3Pressed() -> void:
	#add a function that changes the difficulty diff3
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
