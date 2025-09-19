extends Node2D

func _ready() -> void:
	PlayerData.load_player_data()


func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://Scenes/Welcome.tscn")
