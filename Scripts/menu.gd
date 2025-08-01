extends Node2D

func _ready():
	$"Settings".hide() #prevents the popup from showing when got back from difficulty/game scene

func playButtonPressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/difficulty.tscn")

func settingsButtonPressed() -> void:
	$"Settings".popup_centered()

func exitButtonPressed() -> void:
	get_tree().quit()
