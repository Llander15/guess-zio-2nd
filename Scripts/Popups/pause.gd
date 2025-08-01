extends Popup

func _ready():
	$"Settings".hide() #prevents the popup from showing when got back from other scene

func resumePressed() -> void:
	self.hide()

func settingsPressed() -> void:
	$"Settings".popup_centered()

func quitPressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
