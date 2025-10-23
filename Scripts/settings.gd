extends Node2D

func _ready() -> void:
	# Load saved linear (0–1) volume value
	var saved_value: float = PlayerData.player_data["settings"].get("volume", 1.0)
	
	# Apply it to the slider and audio
	$"Volume Slider".value = saved_value
	_on_volume_slider_value_changed(saved_value)
	
	# Hide confirmation dialog
	$ConfirmDelete.visible = false
	
	# Connect delete dialog buttons
	$ConfirmDelete.get_node("HBoxContainer/Cancel").pressed.connect(_on_delete_cancel_pressed)
	$ConfirmDelete.get_node("HBoxContainer/Confirm").pressed.connect(_on_delete_confirm_pressed)


# ─── Delete Confirmation ──────────────────────────────────────────────────────────
func _on_delete_cancel_pressed() -> void:
	$ConfirmDelete.visible = false

func _on_delete_confirm_pressed() -> void:
	PlayerData.delete_player_data()


# ─── Volume Slider Logic ──────────────────────────────────────────────────────────
func _on_volume_slider_value_changed(value: float) -> void:
	var db: float
	
	# Convert 0–1 slider value to decibels (logarithmic scale)
	if value <= 0.0:
		db = -80.0  # Silent
	else:
		db = 20.0 * log(value) / log(10)  # Convert to dB
		
	# Apply volume to Master bus
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), db)
	
	# Save raw slider value (0–1)
	save_volume(value)
	
	# Update on-screen debug text
	test_update()


# ─── Save / Display ───────────────────────────────────────────────────────────────
func save_volume(value: float) -> void:
	PlayerData.player_data["settings"]["volume"] = value
	test_update()

func test_update() -> void:
	var db = AudioServer.get_bus_volume_db(AudioServer.get_bus_index("Master"))
	$"test_ volume value".text = str(round(db)) + " dB"


# ─── Navigation / UI ──────────────────────────────────────────────────────────────
func _on_back_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func _on_delete_player_data_pressed() -> void:
	$ConfirmDelete.popup_centered()
