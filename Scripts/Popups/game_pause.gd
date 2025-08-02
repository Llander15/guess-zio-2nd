extends Panel

func _on_resume_pressed() -> void:
	self.hide()

func _on_settings_pressed() -> void:
	pass # Replace with function body.

func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")
