extends Node2D
var Logic = preload("res://Scripts/Game scripts/logic.gd").new()
var answers = []
var answerButtons = []

func _ready() -> void:
	#initially hides the popups
	#gets buggy when only using toggle visibility
	$Popups/GamePause.hide() 
	$Popups/SkillSubject.hide()
	$Popups/SkillDifficulty.hide()
	$Popups/QuestionScreen.hide()
	
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
	
	#difficlty check
	$StageDiff.text = Global.getStageDiff()
	
	#Updating player max hp
	$"Player/player hp bar".max_value = Global.playerHp
	$"Player/player hp bar".value = Global.playerHp
	
	#Updating enemy max hp
	$"Enemy/enemy hp bar".max_value = Global.enemyHp
	$"Enemy/enemy hp bar".value = Global.enemyHp
	
	#
	Logic.duplicateQuestions()
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
	$"Skill Checker".text = Logic.getSkill()
	$Popups/SkillSubject.popup_centered()
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


#Questionare
var progress = 0 #0-5
var noCorrectAnswers = 0
var Qn
var Question = ''
var Correct = ''
var Wrong = []

var correctPlacement
var playerAnswer
func questionLoop() -> void:
	$Popups/QuestionScreen.get_node('Progress 1 to 5').value = progress
	Logic.setQuestions()
	Qn = Logic.generatedQuestion[progress]
	Question = Qn[0]
	Correct = Qn[1]
	Wrong = Qn[2]
	
	correctPlacement = randi() % 5  #random number generator 0-4
	Wrong.shuffle()                     #random order for wrong answers
	#loop for asigning the answers according to the random number generated
	var Wn = -1
	for x in range(4):
		if (x == correctPlacement):
			answers[x].text = Correct
		else:
			answers[x].text = Wrong[Wn]
			Wn +=1
	
	
	$Popups/QuestionScreen.get_node("Question Generated").text = Question
	
	progress += 1
	$Popups/QuestionScreen.get_node('Progress 1 to 5').value = progress

func checkAnswer() -> void:
	if (correctPlacement == playerAnswer):
		noCorrectAnswers += 1
		$Popups/QuestionScreen.get_node("No of correct Answers").text = "Correct: " + str(noCorrectAnswers) + "/5"
	else:
		pass

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
