extends Node2D

func _ready() -> void:
	$HBoxContainer/EasyDoor.disabled = false
	if (PlayerData.player_data["achievements"]["easyStagePassed"] == true):
		$HBoxContainer/NormalDoor.disabled = false
	else:
		$HBoxContainer/NormalDoor.disabled = true
		$HBoxContainer/NormalDoor/Label.text = "Locked"
	
	if (PlayerData.player_data["achievements"]["normalStagePassed"] == true):
		$HBoxContainer/HardDoor.disabled = false
	else:
		$HBoxContainer/HardDoor.disabled = true
		$HBoxContainer/HardDoor/Label.text = "Locked"

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")


func _on_easy_door_pressed() -> void:
	Global.setStageDiff('easy')
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")


func _on_normal_door_pressed() -> void:
	Global.setStageDiff('normal')
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")


func _on_hard_door_pressed() -> void:
	Global.setStageDiff('hard')
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")
