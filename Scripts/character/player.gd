extends Node2D

var target = null
var parent = null

func _ready():
	# Adjust this path to your enemy node in the scene tree
	target = get_parent().get_node("Enemy_")
	parent = get_parent()
	
	$".".position = Vector2(542,521)
	$Sprite.play("idle")

func start_attack():
	# Play your animation sequence which moves, attacks, then idles
	$AnimationPlayer.play("attack_combo")

# This method will be called by AnimationPlayer's Call Method Track at the right hit frame
func deal_damage():
	if target:
		target.take_damage()


func take_damage():
	# Play damage animation, then go back to idle
	parent.playerHpUpdate()
	$Sprite.play("dmg")
	# Wait until damage animation finishes before returning to idle
	await $Sprite.animation_finished
	$Sprite.play("idle")

func regen():
	$Sprite.play("regen")
	await $Sprite.animation_finished
	$Sprite.play("idle")
	await get_tree().create_timer(0.2).timeout  
	
	parent.playerHpUpdate()
	#can add healed number later
	
	
	
	parent.enemyTurn()
	target.start_attack()
