extends Node2D

func _ready() -> void:
	PlayerData.load_player_data()
	apply_saved_volume()

func _on_transparent_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func apply_saved_volume() -> void:
	# Get saved volume value from PlayerData (0.0 to 1.0), default to 1.0 if not set
	var saved_value: float = PlayerData.player_data["settings"].get("volume", 1.0)
	
	# Convert linear value to decibels
	var db: float
	if saved_value <= 0.0:
		db = -80.0
	else:
		db = 20.0 * log(saved_value) / log(10)
	
	# Apply volume immediately to Master bus
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), db)
