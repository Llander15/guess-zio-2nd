extends Node2D

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func _on_easy_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")

func _on_normal_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")

func _on_hard_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")
