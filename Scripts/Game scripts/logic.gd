extends Node
var Questions = preload("res://Scripts/Game scripts/questions.gd").new()

var skill = 'recover'
var subject = 'html'
var subDiff = 'easy'
var correct = 0


#variables for question duplicates
var htmlEasy = []
var htmlNormal = []
var htmlHard = []

var cssEasy = []
var cssNormal = []
var cssHard = []

var javascriptEasy = []
var javascriptNormal = []
var javascriptHard = []

#Duplicate Questions
func duplicateQuestions() -> void:
	htmlEasy = Questions.html_easy
	htmlNormal = Questions.html_medium
	htmlHard = Questions.html_hard
	
	cssEasy = Questions.css_easy
	cssNormal = Questions.css_medium
	cssHard = Questions.css_hard
	
	javascriptEasy = Questions.js_easy
	javascriptNormal = Questions.js_medium
	javascriptHard = Questions.js_hard

#used for display/interaction
var generatedQuestion
#sample structure of generated question
#[
	#'Which tag is used to create a hyperlink in HTML?',              #Question
	#'<a>',                                                           #Answer
	#[                                                                #Wrong Answers
		#'<img>',
		#'<link>',
		#'<href>'
	#]
#]

func setSkill(set_skill) -> void:
	skill = set_skill

func getSkill() -> String:
	return skill

func setSubject(sub) -> void:
	subject = sub

func getSubject() -> String:
	return subject

func setSubDiff(diff) -> void:
	subDiff = diff

func getSubDiff() -> String:
	return subDiff

func incCombo() -> void:
	correct += 1 #increases by 1

func checkCombo() -> void:
	if (correct == 0):
		pass
		correct = 0
	elif (correct == 1):
		pass
		correct = 0
	elif (correct == 2):
		pass
		correct = 0
	elif (correct == 3):
		pass
		correct = 0
	elif (correct == 4):
		pass
		correct = 0
	elif (correct == 5):
		pass
		correct = 0
	

#function to generate a 5 random questions based on player's input
#var generatedQuestion
func setQuestions() -> void:
	if (subject == 'html'):
		if (subDiff == 'easy'):
			htmlEasy.shuffle()
			generatedQuestion = htmlEasy.slice(0, 5)
			
		elif (subDiff == 'normal'):
			htmlNormal.shuffle()
			generatedQuestion = htmlNormal.slice(0, 5)
			
		elif (subDiff == 'hard'):
			htmlHard.shuffle()
			generatedQuestion = htmlHard.slice(0, 5)
			
			
			
	elif (subject == 'css'):
		if (subDiff == 'easy'):
			cssEasy.shuffle()
			generatedQuestion = cssEasy.slice(0, 5)
			
		elif (subDiff == 'normal'):
			cssNormal.shuffle()
			generatedQuestion = cssNormal.slice(0, 5)
			
		elif (subDiff == 'hard'):
			cssHard.shuffle()
			generatedQuestion = cssHard.slice(0, 5)
			
			
			
	elif (subject == 'javascript'):
		if (subDiff == 'easy'):
			javascriptEasy.shuffle()
			generatedQuestion = javascriptEasy.slice(0, 5)
			
		elif (subDiff == 'normal'):
			javascriptNormal.shuffle()
			generatedQuestion = javascriptNormal.slice(0, 5)
			
		elif (subDiff == 'hard'):
			javascriptHard.shuffle()
			generatedQuestion = javascriptHard.slice(0, 5)
	else:
		htmlEasy.shuffle()
		generatedQuestion = htmlEasy.slice(0, 5)
