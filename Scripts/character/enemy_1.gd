extends Node2D

var target = null  # The player node
var parent = null

func _ready():
	# Adjust this path to your Player node in the scene tree
	target = get_parent().get_node("Player_")
	parent = get_parent()
	
	$".".position = Vector2(1394,441)
	$Sprite.play("idle")

func start_attack():
	# Play attack animation (dash → attack → idle)
	$AnimationPlayer.play("attack_combo")

# Called by AnimationPlayer at the right hit frame
func deal_damage():
	if target:
		target.take_damage()

func take_damage():
	# Play damage animation, then return to idle
	parent.enemyHpUpdate()
	$Sprite.play("dmg")
	await $Sprite.animation_finished
	$Sprite.play("idle")
	
	parent.enemyTurn()
	start_attack()
