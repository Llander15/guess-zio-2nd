extends Node2D

func _ready():
	$"Pause".hide() #prevents the popup from showing when got back from difficulty/game scene

func atkBtnPressed() -> void:
	pass

func recBtnPressed() -> void:
	pass

func spBtnPressed() -> void:
	pass

func pausePressed() -> void:
	$"Pause".popup_centered()
