extends Node2D

#Base Stats
var enemyHp = 100
var playerHp = 100

func _ready() -> void:
	#
	
	$"Player/player hp bar".value = playerHp
	
	
	
	$GamePause.hide() #initially hides the popup

func _on_pause_pressed() -> void:
	$GamePause.visible = true

#Gmaeplay Logic
func playerHpCap() -> void:
	if (playerHp>100):
		playerHp=100
	elif (playerHp<1):
		pass
		#GAME OVER

func _on_attack_pressed() -> void:
	enemyHp = enemyHp - 5
	playerHp = playerHp - 10#test for recover
	$"Enemy/enemy hp bar".value = enemyHp
	$"Player/player hp bar".value = playerHp
	
	#add a change scene later when enemy hp is below 1


func _on_recover_pressed() -> void:
	playerHp = playerHp + 30
	playerHpCap()
	$"Player/player hp bar".value = playerHp
