extends Node2D
var Logic = preload("res://Scripts/Game scripts/logic.gd").new()
var answers = []
var answerButtons = []

func _ready() -> void:
	randomize()  # Without this, randomness is predictable (like shuffle and randi functions)
	Global.playerCharge = 0 #Always starts the game at 0 charge and prevents from getting charges from last game
	
	#initially hides the popups
	#gets buggy when only using toggle visibility
	$Popups/GamePause.hide() 
	$Popups/SkillSubject.hide()
	$Popups/SkillDifficulty.hide()
	$Popups/QuestionScreen.hide()
	$Popups/GameOverScreen.hide()
	$Popups/GameCompleteScreen.hide()
	
	#getting nodes from popups
	
	#Skill Subject nodes
	$Popups/SkillSubject.get_node("MarginContainer/HBoxContainer/HTML").pressed.connect(_on_html_pressed)
	$Popups/SkillSubject.get_node("MarginContainer/HBoxContainer/CSS").pressed.connect(_on_css_pressed)
	$Popups/SkillSubject.get_node("MarginContainer/HBoxContainer/Javascript").pressed.connect(_on_javascript_pressed)
	
	#Skill Difficulty nodes
	$Popups/SkillDifficulty.get_node("MarginContainer/HBoxContainer/Easy").pressed.connect(_on_easy_pressed)
	$Popups/SkillDifficulty.get_node("MarginContainer/HBoxContainer/Normal").pressed.connect(_on_normal_pressed)
	$Popups/SkillDifficulty.get_node("MarginContainer/HBoxContainer/Hard").pressed.connect(_on_hard_pressed)
	
	#question labels
	answers.append($Popups/QuestionScreen.get_node("A Answer"))
	answers.append($Popups/QuestionScreen.get_node("B Answer"))
	answers.append($Popups/QuestionScreen.get_node("C Answer"))
	answers.append($Popups/QuestionScreen.get_node("D Answer"))
	
	#question screen inputs
	$Popups/QuestionScreen.get_node("A Button").pressed.connect(_on_a_button_pressed)
	$Popups/QuestionScreen.get_node("B Button").pressed.connect(_on_b_button_pressed)
	$Popups/QuestionScreen.get_node("C Button").pressed.connect(_on_c_button_pressed)
	$Popups/QuestionScreen.get_node("D Button").pressed.connect(_on_d_button_pressed)
	
	#Game end return buttons
	#both buttons connects to a 1 func
	$Popups/GameCompleteScreen.get_node("Return btn").pressed.connect(gameEndReturnBtn)
	$Popups/GameOverScreen.get_node("Return btn").pressed.connect(gameEndReturnBtn)
	
	
	#difficlty check
	$StageDiff.text = Global.getStageDiff()
	
	updateDisplay()
	#
	Logic.duplicateQuestions()
	
	
	#BGM
	$BGM.play()
	$BGM.stream.loop = true
	if GlobalBgm.is_playing():
		GlobalBgm.stop()


func updateDisplay() -> void: 
	$"Player/player hp bar".max_value = Global.maxPlayerHp
	$"Player/player hp bar".value = Global.playerHp
	$"Enemy/enemy hp bar".max_value = Global.maxEnemyHp
	$"Enemy/enemy hp bar".value = Global.enemyHp
	$Popups/QuestionScreen.get_node('Progress 1 to 5').value = progress
	$Popups/QuestionScreen.get_node("No of correct Answers").text = "Correct: " + str(noCorrectAnswers) + "/5"
	$"SP Charge".text= "Charge: " + str(Global.playerCharge) + "/10"

#INPUTS ------------------------------------------------------------------------

#pause button
func _on_pause_pressed() -> void:
	$Popups/GamePause.visible = true
	#have its own script directly connected to the scene

#Skill Selection ---------------------------------------------------------------
func _on_recover_pressed() -> void:
	Logic.setSkill('recover')
	$"Skill Checker".text = Logic.getSkill()
	$Popups/SkillSubject.popup_centered()
	#sets acction to recover

func _on_attack_pressed() -> void:
	Logic.setSkill('attack')
	$"Skill Checker".text = Logic.getSkill()
	$Popups/SkillSubject.popup_centered()
	#sets action to attack

func _on_special_pressed() -> void:
	Logic.setSkill('special')
	
	var randomSub = randi() % 3
	if (randomSub==0):
		Logic.setSubject('html')
	elif (randomSub==1):
		Logic.setSubject('css')
	else:
		Logic.setSubject('javascript')
		
	Logic.setSubDiff('hard') #automatically selects hard difficulty
	
	$"Skill Checker".text = Logic.getSkill()
	$"Skill Sub Checker".text = Logic.getSubject()
	$"Sub Diff Checker".text = Logic.getSubDiff()
	
	
	if (Global.playerCharge >= 5):
		questionLoop()
		$Popups/QuestionScreen.visible = true
		Global.playerCharge -= 5
	
	#sets action to sp
	#initially disabled/hidden and only is usable when a condition is right

#Subject Selection -------------------------------------------------------------
func _on_html_pressed() -> void:
	Logic.setSubject('html')
	$"Skill Sub Checker".text = Logic.getSubject()
	
	$Popups/SkillSubject.hide()
	$Popups/SkillDifficulty.popup_centered()

func _on_css_pressed() -> void:
	Logic.setSubject('css')
	$"Skill Sub Checker".text = Logic.getSubject()
	
	$Popups/SkillSubject.hide()
	$Popups/SkillDifficulty.popup_centered()

func _on_javascript_pressed() -> void:
	Logic.setSubject('javascript')
	$"Skill Sub Checker".text = Logic.getSubject()
	
	$Popups/SkillSubject.hide()
	$Popups/SkillDifficulty.popup_centered()

#Difficulty Selection ----------------------------------------------------------
func _on_easy_pressed() -> void:
	Logic.setSubDiff('easy')
	$"Sub Diff Checker".text = Logic.getSubDiff()
	
	questionLoop()
	
	$Popups/SkillDifficulty.hide()
	$Popups/QuestionScreen.visible = true

func _on_normal_pressed() -> void:
	Logic.setSubDiff('normal')
	$"Sub Diff Checker".text = Logic.getSubDiff()
	
	questionLoop()
	
	$Popups/SkillDifficulty.hide()
	$Popups/QuestionScreen.visible = true

func _on_hard_pressed() -> void:
	Logic.setSubDiff('hard')
	$"Sub Diff Checker".text = Logic.getSubDiff()
	
	questionLoop()
	
	$Popups/SkillDifficulty.hide()
	$Popups/QuestionScreen.visible = true

#Questionare inputs ------------------------------------------------------------
func _on_a_button_pressed() -> void:
	playerAnswer = 0
	checkAnswer()

func _on_b_button_pressed() -> void:
	playerAnswer = 1
	checkAnswer()

func _on_c_button_pressed() -> void:
	playerAnswer = 2
	checkAnswer()

func _on_d_button_pressed() -> void:
	playerAnswer = 3
	checkAnswer()


#Game logic/functions ------------------------------------------------------------------------------

#Questionare variables
var progress = 0 #0-5, used to show what number(in progress bar) and get question as array index 
var noCorrectAnswers = 0 #Number of Correct Answers 
#increase as player get the coreect answer, will be use to add charge and calculate dmg rec and sp 
var Qn #Queastion number, array in which content structure is as the same as the variables bellow: 
#[string, string, array[string, string, string]]
var Question = ''
var Correct = ''
var Wrong = []
#Questions are stored at questions.gd (Scripts>Game scripts>questions.gd)

var correctPlacement #used for correct answer placement to be able to randomly place it in the questionare
var playerAnswer #user's picked answer, if the same value as the correctPlacement user answered correct

func questionLoop() -> void: #func to generate question
	#this func and checkAnswer func will go back to back wth each other until the progress reached 5
	
	if (progress == 0): #generate a question on first call/ progress = 0
		Logic.setQuestions() # set questions depending on what subject and diff and get 5 random questions
	elif (progress == 5): #ends 'loop' if progress = 5
		progress = 0
		if (Logic.skill == 'recover'):
			recCalculation()
		elif (Logic.skill == 'attack'):
			dmgCalculation()
		elif (Logic.skill == 'special'):
			spCalculation()
		$Popups/QuestionScreen.hide()
		return # ignores the rest of the function if progress is equal to 5
	
	$Popups/QuestionScreen.get_node('Progress 1 to 5').value = progress #Progress Bar Display
	
	Qn = Logic.generatedQuestion[progress] #setting Question number based on progress
	Question = Qn[0]
	Correct = Qn[1]
	Wrong = Qn[2]
	
	correctPlacement = randi() % 4  #random number generator 0-3
	Wrong.shuffle()                 #random order for wrong answers
	#loop for asigning the answers according to the random number generated
	var Wn = 0 #wrong answer
	for x in range(4):
		if (x == correctPlacement):
			answers[x].text = Correct
		else:
			answers[x].text = Wrong[Wn]
			Wn +=1
	
	
	$Popups/QuestionScreen.get_node("Question Generated").text = Question
	progress += 1
	updateDisplay()
	#$Popups/QuestionScreen.get_node('Progress 1 to 5').value = progress

func checkAnswer() -> void:
	if (correctPlacement == playerAnswer):
		noCorrectAnswers += 1
		$Popups/QuestionScreen.get_node("No of correct Answers").text = "Correct: " + str(noCorrectAnswers) + "/5"
	else:
		pass
	questionLoop()

func dmgCalculation() -> void: #for Attack
	var damageToEnemy = 0
	
	if (noCorrectAnswers == 0): #0 
		damageToEnemy = Global.enemyDmg * 0
	elif (noCorrectAnswers == 1): #1 
		damageToEnemy = Global.enemyDmg * 0.5
	elif (noCorrectAnswers == 2): #2 
		damageToEnemy = Global.playerDmg * 1
	elif (noCorrectAnswers == 3): #3 
		damageToEnemy = Global.playerDmg * 1.5
	elif (noCorrectAnswers == 4): #4 
		damageToEnemy = Global.playerDmg * 2
	elif (noCorrectAnswers == 5): #5 
		damageToEnemy = Global.playerDmg * 3
	
	var dmgMultiplyer
	if (Logic.subDiff == 'easy'):
		dmgMultiplyer = 1
	elif (Logic.subDiff == 'normal'):
		dmgMultiplyer = 1.5
	elif (Logic.subDiff == 'hard'):
		dmgMultiplyer = 2
	
	Global.enemyHp -= damageToEnemy * dmgMultiplyer
	
	if(Global.playerCharge < 10):
		Global.playerCharge += noCorrectAnswers
		if(Global.playerCharge>10):
			Global.playerCharge = 10
	
	noCorrectAnswers = 0
	updateDisplay()
	gameEnd()
	enemyTurn()

func recCalculation() -> void:
	var healToSelf = 0
	
	if (noCorrectAnswers == 0): #5% heal
		healToSelf = Global.maxPlayerHp * 0.05
	elif (noCorrectAnswers == 1): #10% heal
		healToSelf = Global.maxPlayerHp * 0.10
	elif (noCorrectAnswers == 2): #15% heal
		healToSelf = Global.maxPlayerHp * 0.15
	elif (noCorrectAnswers == 3): #20% heal
		healToSelf = Global.maxPlayerHp * 0.20
	elif (noCorrectAnswers == 4): #25% heal
		healToSelf = Global.maxPlayerHp * 0.25
	elif (noCorrectAnswers == 5): #30 heal
		healToSelf = Global.maxPlayerHp * 0.30
	
	var healMultiplyer
	if (Logic.subDiff == 'easy'):
		healMultiplyer = 1
	elif (Logic.subDiff == 'normal'):
		healMultiplyer = 2
	elif (Logic.subDiff == 'hard'):
		healMultiplyer = 3
	
	Global.playerHp += healToSelf * healMultiplyer
	
	if(Global.playerCharge < 10):
		Global.playerCharge += noCorrectAnswers
		if (Global.playerCharge>10):
			Global.playerCharge = 10
			
	noCorrectAnswers = 0
	updateDisplay()
	gameEnd()
	enemyTurn()

func spCalculation() -> void:
	var damageToEnemy = 0
	
	if (noCorrectAnswers == 0): #0 
		damageToEnemy = Global.enemyDmg * 0
	elif (noCorrectAnswers == 1): #1 
		damageToEnemy = Global.enemyDmg * 0.5
	elif (noCorrectAnswers == 2): #2 
		damageToEnemy = Global.playerDmg * 1
	elif (noCorrectAnswers == 3): #3 
		damageToEnemy = Global.playerDmg * 1.5
	elif (noCorrectAnswers == 4): #4 
		damageToEnemy = Global.playerDmg * 2
	elif (noCorrectAnswers == 5): #5 
		damageToEnemy = Global.playerDmg * 3
	
	Global.enemyHp -= damageToEnemy * 5
	
	noCorrectAnswers = 0
	updateDisplay()
	gameEnd()
	enemyTurn()

func enemyTurn() -> void:
	#enemy attack animation
	Global.playerHp -= Global.enemyDmg
	
	updateDisplay()
	gameEnd()


func gameEnd() -> void:
	if (Global.playerHp <= 0):
		$Popups/GameOverScreen.visible = true
	elif  (Global.enemyHp <= 0):
		$Popups/GameCompleteScreen.visible = true
		if (Global.stageDiff == 'easy'):
			PlayerData.player_data["achievements"]["easyStagePassed"] = true
		elif (Global.stageDiff == 'normal'):
			PlayerData.player_data["achievements"]["normalStagePassed"] = true
		elif (Global.stageDiff == 'hard'):
			PlayerData.player_data["achievements"]["hardStagePassed"] = true

func gameEndReturnBtn() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")
