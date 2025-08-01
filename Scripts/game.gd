extends Node2D

func _ready() -> void:
	$GamePause.hide()

func _on_pause_pressed() -> void:
	$GamePause.visible = true
