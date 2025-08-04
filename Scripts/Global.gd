extends Node
#Global Script
#stage diff, player stat, settings,

#Stage Difficulty 
var stageDiff = 'easy'

func setStageDiff(diff) -> void:
	stageDiff = diff
	setEnemyStat()

func getStageDiff() -> String:
	return stageDiff

#Stats
var playerHp = 100
var playerDmg = 10

#enemy stats
var enemyHp = 100
var enemyDmg = 10

func setEnemyStat() -> void:
	if (stageDiff == 'easy'):
		enemyHp = 100
		enemyDmg = 10
	elif (stageDiff == 'normal'):
		enemyHp = 150
		enemyDmg = 15
	elif (stageDiff == 'hard'):
		enemyHp = 200
		enemyDmg = 20	 
