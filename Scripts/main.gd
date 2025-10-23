extends Node2D

func _ready() -> void:
	PlayerData.save_player_data()
	
	#BGM back on when scene got back from game
	if !GlobalBgm.is_playing():
		GlobalBgm.play()

func _on_exit_btn_pressed() -> void:
	$Popups/ExitGameConfirmation.popup_centered()

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Stages.tscn")
 
func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Settings.tscn")


func _on_lesson_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Lesson.tscn")
