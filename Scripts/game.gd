extends Node2D

#Base Stats ----------------------------------------------------------------------------------------
var enemyHp = 100
var playerHp = 100

func _ready() -> void:
	$"Player/player hp bar".value = playerHp
	$"Enemy/enemy hp bar".value = enemyHp
	
	#initially hides the popup
	$Popups/GamePause.hide() 

func _on_pause_pressed() -> void:
	$Popups/GamePause.visible = true

#Gmaeplay Logic ------------------------------------------------------------------------------------
func playerHpCap() -> void:
	if (playerHp>100):
		playerHp=100
	elif (playerHp<1):
		pass
		#GAME OVER

func _on_attack_pressed() -> void:
	$Popups/SkillOption.visible = true

func _on_recover_pressed() -> void:
	$Popups/SkillOption.visible = true

func _on_special_pressed() -> void:
	$Popups/SkillOption.visible = true
