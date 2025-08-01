extends Node2D


func _on_transparent_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")
