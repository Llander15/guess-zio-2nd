extends Node2D

func _on_exit_btn_pressed() -> void:
	$Popups/ExitGameConfirmation.popup_centered()

func _on_start_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Stages.tscn")
