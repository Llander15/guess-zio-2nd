extends Node
#Global Script
#stage diff, player stat, settings,

#Stage Difficulty 
var stageDiff = 'easy'

func setStageDiff(diff) -> void:
	stageDiff = diff
	resetSelfStat()
	setEnemyStat()

func getStageDiff() -> String:
	return stageDiff

#Stats
var maxPlayerHp = 100
var playerHp = 100
var playerDmg = 10

func resetSelfStat() -> void: # !!! change func content if stat var is change
	maxPlayerHp = 100
	playerHp = 100
	playerDmg = 10

#enemy stats
var maxEnemyHp = 10
var enemyHp = 10
var enemyDmg = 1

func setEnemyStat() -> void:
	if (stageDiff == 'easy'):
		enemyHp = 100
		maxEnemyHp = 100
		enemyDmg = 10
	elif (stageDiff == 'normal'):
		enemyHp = 150
		maxEnemyHp = 150
		enemyDmg = 15
	elif (stageDiff == 'hard'):
		maxEnemyHp = 200
		enemyHp = 200
		enemyDmg = 20
	else:
		enemyHp = 10
		maxEnemyHp = 10
		enemyDmg = 1
