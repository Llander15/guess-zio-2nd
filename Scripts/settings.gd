extends Node2D

func _ready() -> void:
	$"Volume Slider".value = AudioServer.get_bus_volume_db(AudioServer.get_bus_index("Master"))
	
	test_update()

func _on_volume_slider_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)
	save_volume(value)
	
	test_update()

func save_volume(value):
	PlayerData.player_data["settings"]["volume"] = value
	
	test_update()

func test_update():
	$"test_ volume value".text = str(AudioServer.get_bus_volume_db(AudioServer.get_bus_index("Master"))) + "dB"


func _on_back_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")
