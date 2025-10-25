extends Node2D

func _ready() -> void:
	$"html scrol container".visible = true
	$"css scrol container".visible = false
	$"js scrol container".visible = false
	
func _on_html_pressed() -> void:
	$"html scrol container".visible = true
	$"css scrol container".visible = false
	$"js scrol container".visible = false
	
	$Subject/HTML/Label.add_theme_color_override("font_color", Color("#ffffff"))
	$Subject/CSS/Label.add_theme_color_override("font_color", Color("#000000"))
	$Subject/JS/Label.add_theme_color_override("font_color", Color("#000000"))

func _on_css_pressed() -> void:
	$"html scrol container".visible = false
	$"css scrol container".visible = true
	$"js scrol container".visible = false
	
	$Subject/HTML/Label.add_theme_color_override("font_color", Color("#000000"))
	$Subject/CSS/Label.add_theme_color_override("font_color", Color("#ffffff"))
	$Subject/JS/Label.add_theme_color_override("font_color", Color("#000000"))

func _on_js_pressed() -> void:
	$"html scrol container".visible = false
	$"css scrol container".visible = false
	$"js scrol container".visible = true
	
	$Subject/HTML/Label.add_theme_color_override("font_color", Color("#000000"))
	$Subject/CSS/Label.add_theme_color_override("font_color", Color("#000000"))
	$Subject/JS/Label.add_theme_color_override("font_color", Color("#ffffff"))

var current_lesson

func update_lesson():
	$"lesson content/leson title".text = current_lesson["title"]
	$"lesson content/ScrollContainer/lesson deescription".text = current_lesson["description"]

func _on_lesson_1_pressed() -> void:
	current_lesson = html_lessons[0]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_lesson_2_pressed() -> void:
	current_lesson = html_lessons[1]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_lesson_3_pressed() -> void:
	current_lesson = html_lessons[2]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_lesson_4_pressed() -> void:
	current_lesson = html_lessons[3]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_lesson_5_pressed() -> void:
	current_lesson = html_lessons[4]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_lesson_6_pressed() -> void:
	current_lesson = html_lessons[5]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_lesson_7_pressed() -> void:
	current_lesson = html_lessons[6]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_lesson_8_pressed() -> void:
	current_lesson = html_lessons[7]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_lesson_9_pressed() -> void:
	current_lesson = html_lessons[8]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_lesson_10_pressed() -> void:
	current_lesson = html_lessons[9]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#ffffff"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))


func _on_css_1_pressed() -> void:
	current_lesson = css_lessons[0]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_css_2_pressed() -> void:
	current_lesson = css_lessons[1]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_css_3_pressed() -> void:
	current_lesson = css_lessons[2]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_css_4_pressed() -> void:
	current_lesson = css_lessons[3]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_css_5_pressed() -> void:
	current_lesson = css_lessons[4]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_css_6_pressed() -> void:
	current_lesson = css_lessons[5]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_css_7_pressed() -> void:
	current_lesson = css_lessons[6]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_css_8_pressed() -> void:
	current_lesson = css_lessons[7]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_css_9_pressed() -> void:
	current_lesson = css_lessons[8]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_css_10_pressed() -> void:
	current_lesson = css_lessons[9]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#ffffff"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))


func _on_js_1_pressed() -> void:
	current_lesson = js_lessons[0]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_2_pressed() -> void:
	current_lesson = js_lessons[1]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_3_pressed() -> void:
	current_lesson = js_lessons[2]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_4_pressed() -> void:
	current_lesson = js_lessons[3]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_5_pressed() -> void:
	current_lesson = js_lessons[4]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_6_pressed() -> void:
	current_lesson = js_lessons[5]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_7_pressed() -> void:
	current_lesson = js_lessons[6]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_8_pressed() -> void:
	current_lesson = js_lessons[7]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_9_pressed() -> void:
	current_lesson = js_lessons[8]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_10_pressed() -> void:
	current_lesson = js_lessons[9]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_11_pressed() -> void:
	current_lesson = js_lessons[10]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_12_pressed() -> void:
	current_lesson = js_lessons[11]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_13_pressed() -> void:
	current_lesson = js_lessons[12]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_14_pressed() -> void:
	current_lesson = js_lessons[13]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_15_pressed() -> void:
	current_lesson = js_lessons[14]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_16_pressed() -> void:
	current_lesson = js_lessons[15]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#ffffff"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#000000"))

func _on_js_17_pressed() -> void:
	current_lesson = js_lessons[16]
	update_lesson()
	
	$"html scrol container/html lessons/lesson1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"html scrol container/html lessons/lesson10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"css scrol container/css lessons/css1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"css scrol container/css lessons/css10/Label".add_theme_color_override("font_color", Color("#000000"))
	
	$"js scrol container/js lessons/js1/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js2/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js3/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js4/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js5/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js6/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js7/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js8/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js9/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js10/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js11/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js12/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js13/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js14/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js15/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js16/Label".add_theme_color_override("font_color", Color("#000000"))
	$"js scrol container/js lessons/js17/Label".add_theme_color_override("font_color", Color("#ffffff"))


var html_lessons = [
	{ #lesson 1 Hyperlinks
		'title': 'Hyperlinks',
		'description': 
		'<a>tag is used to create a hyperlink in HTML.
		
		Ex.<a href="https://www.google.com">Visit Google</a>'
	},
	{ #lesson 2 Lists
		'title': 'Lists',
		'description': 
		'HTML supports two main types of lists:
		Ordered List (<ol>):Ordered List Creates a numbered list.
		Unordered List (<ul>):Unordered List Creates a bulleted list.
		
		Example of Ordered List:
		<ol>
		<li>First</li>
		<li>Second</li>
		</ol>
		Example of Unordered List:
		<ul>
		<li>Apple</li>
		<li>Banana</li>
		<li>Mango</li>
		<li>Orange</li>
		</ul>'
	},
	{ #lesson 3 Images
		'title': 'Images',
		'description': 
		'<img>: The <img> tag is used to display images on a web page.
		src: It tells the browser where to find the image you want to display.
		
		Ex.
		<img src="photo.jpg" alt="Sample Photo">'
	},
	{ #lesson 4 Forms & Inputs
		'title': 'Forms & Inputs',
		'description': 
		'A Form is used to collect user input. Forms are created using the <form> tag and usually include input fields, checkboxes, radio buttons, drop-downs, and a submit button.
		
		Example of forms:
		<input type="text" placeholder="Enter your name">
		<input type="password" placeholder="Enter your password">
		<input type="checkbox"> I agree to the terms'
	},
	{ #lesson 5 Headings & Titles
		'title': 'Headings & Titles',
		'description': 
		'Titles: The <title> tag sets the title of the web page.
		Example of title:
		<html>
		<head>
		<title>My First Web Page</title>
		</head>
		</html>
		
		Headings: Headings make text bold and large They go from <h1> (largest) to <h6> (smallest)
		Example of Headings:
		<h1>Main Title</h1>
		<h2>Subheading</h2>
		<h3>Smaller Heading</h3>
		<h6>Smallest Heading</h6>'
	},
	{ #lesson 6 Tables
		'title': 'Tables',
		'description': 
		'Tables let you arrange data in rows and columns it is also useful for organizing structured data like schedules, grades, and reports.
		The main tags are:
		<table> → Creates a table
		<tr> → Table row
		<td> → Table data (cell)
		<th> → Table header (bold, centered by default)'
	},
	{ #lesson 7 Multimedia in HTML
		'title': 'Multimedia in HTML',
		'description': 
		'Multimedia tags can make your webpage interactive and engaging.
		Example:
		The <audio> Tag- It is used to play sound/music.
		The <video> Tag – It is used to play videos
		
		Common attributes in video:
		1) controls → shows play/pause buttons
		2) autoplay → starts playing automatically
		3) loop → repeats video
		4) muted → starts muted
		
		The <iframe> Tag – It embeds another webpage inside your page.
		The <img> Tag – Lets you displays an image.
		Attributes in img:
		1. src → the file path or URL of the image
		2. alt → alternative text (shown if image doesn’t load)
		3. width / height → size of the image'
	},
	{ #lesson 8 Semantic Tags
		'title': 'Semantic Tags',
		'description': 
		'What are Semantic Tags?
		Semantic tags add meaning to your webpage. They tell both browsers and developers what the content represents.
		
		Example of Semantic Tags are:
		1) <header> → Top section
		2) <footer> → Bottom section
		3) <nav> → Navigation links
		4) <main> → Main content
		5) <article> → Independent content
		6) <aside> → Sidebar info
		7) <section> → Related content group
		8) <figure> + <figcaption> → Image with caption
		9) <address> → Contact details'
	},
	{ #lesson 9 Advanced Elements
		'title': 'Advanced Elements',
		'description': 
		'1.<link> – External Resources
		Used inside <head> to connect CSS, icons, or other resources.
		Ex.
		<link rel="stylesheet" href="style.css">
		<link rel="icon" type="image/png" href="favicon.png">

		2.<meter> – Gauge Values
		Represents a value within a range (like speed, battery, rating).
		Ex.
		<p>Battery Level: <meter value="0.7">70%</meter></p>

		3.<progress> – Progress Bar
		Shows progress of a task in progress (like loading or uploading).
		Ex. 
		<p>Downloading File:</p>
		<progress value="60" max="100">60%</progress>'
	},
	{ #lesson 10 Scripts & Styles
		'title': 'Scripts & Styles',
		'description': 
		'<script> - Embedding JavaScript
		adds interactivity to a webpage (like buttons, animations, calculations).
		Ex.
		<script>
		alert("Hello, welcome to my page!");
		</script>
		
		
		<style> - Internal CSS
		Adds styling rules inside the <head> of the HTML document.
		Ex.
		<style>
		body { background-color: lightblue; }
		h1 { color: darkblue; font-family: Arial; }
		</style>'
	},
]
var css_lessons = [
	{ #lesson 1 Text Color
		'title': 'Text Color',
		'description':
		'Text Color can make change text color using the color property.
		
		Example:
		<p style="color: red;">Welcome</p>
		This will make the Text “Welcome” appear in color red.'
	},
	{ #lesson 2 Background Color
		'title': 'Background Color',
		'description':
		'Background Color is used to set the color of the background you want.'
	},
	{ #lesson 3 Font Size
		'title': 'Font Size',
		'description':
		'Font Size can make changes on how big or small on the text you want.
		
		Example:
		<div style="font-size: 20px;">Hello</div>'
	},
	{ #lesson 4 Bold & Italic
		'title': 'Bold & Italic',
		'description':
		'Bold Text
		1) The font-weight property controls how thick or bold the text appears.
		Example:
		font-weight: bold;
		
		Italic Text
		2) The font-style property changes the style of the text
		Example:
		font-style: italic;'
	},
	{ #lesson 5 Text Alignment
		'title': 'Text Alignment',
		'description':
		'It is where the text starts from the left, the right, is centered, or is evenly spaced across a line.
		
		Example:
		1) <h1 style="text-align: center;">Title</h1>
		2) <h1 style="text-align: left;">Title</h1>
		3) <h1 style="text-align: right;">Title</h1>'
	},
	{ #lesson 6 Padding & Margin
		'title': 'Padding & Margin',
		'description':
		'Padding - It is the space between the content of an element and its border.
		
		Margin - It is the space outside an element’s border, creating distance
		between the element and surrounding elements.'
	},
	{ #lesson 7 Box Model
		'title': 'Box Model',
		'description':
		'Box Model is important for designing clean and well structured webpages.
		
		Parts of the Box Model:
		1) Content - This is where the actual text, image, or other content of the element appears.
		Example: The text inside a <p> tag.
		
		2) Padding - The space between the content and the border. It creates inner spacing and pushes the content away from the border.
		Example: Adding padding: 10px; gives space inside the element.
		
		3) Border - The line that wraps around the padding and content. Borders can have styles (solid, dashed, dotted), thickness, and colors.
		Example: border: 2px solid black;
		
		4) Margin - The space outside the border, separating the element from other elements.
		Example: margin: 20px; pushes the element away from nearby elements.'
	},
	{ #lesson 8 Gradients
		'title': 'Gradients',
		'description':
		'It is a smooth transition between two or more colors. Instead of using a single solid color, gradients let you blend multiple colors together, making backgrounds more visually appealing.
		
		Types of Gradients:
		1) Linear Gradient - Colors blend in a straight line (top to bottom, left to right, or at an angle).
		Example of Linear Gradient:
		• background-image: linear-gradient(to right, red, yellow);
		
		2) Radial Gradient - Colors spread out from a center point in a circular or elliptical shape.
		Example of Radial Gradient:
		• background-image: conic-gradient(red, yellow, green, blue);'
	},
	{ #lesson 9 Pseudo-classes
		'title': 'Pseudo-classes',
		'description':
		'Pseudo-classes - A pseudo-class defines a special state of an element.
		It applies styles when an element is in a specific condition.
		Ex.
		:hover - Applies style when the mouse pointer is over an element.
		
		button:hover {
		background-color: lightblue;
		}'
	},
	{ #lesson 10 Pseudo-elements
		'title': 'Pseudo-elements',
		'description':
		'Pseudo-elements - A pseudo-element lets you style specific parts of an element. It allows you to add or style content without needing extra HTML.
		Ex.
		::first-letter → Styles the first letter of a text.
		
		p::first-letter {
		font-size: 30px;
		color: green;
		}'
	},
]
var js_lessons = [
	{ #lesson 1 JavaScript
		'title': 'JavaScript',
		'description':
		'JavaScript is a scripting language used to add interactivity to websites. It runs in the browser and lets you make pages dynamic.'
	},
	{ #lesson 2 Variables in JavaScript
		'title': 'Variables in JavaScript',
		'description':
		'Variables store data. Use let, var, or const to declare them.
		Example:
		let name = "John"
		const age = 25
		var isOnline = true'
	},
	{ #lesson 3 Data Types
		'title': 'Data Types',
		'description':
		'Common data types in JavaScript are:
		String – "Hello"
		Number – 100
		Boolean – true or false
		Object – { name: "Ana", age: 20 }
		Array – [1, 2, 3]
		Undefined – a variable with no value
		Null – empty value'
	},
	{ #lesson 4 Strings
		'title': 'Strings',
		'description':
		'Strings are text inside quotes.
		Example:
		let message = "Hello World"
		You can join strings using +
		let fullName = "John" + " " + "Doe"'
	},
	{ #lesson 5 Numbers
		'title': 'Numbers',
		'description':
		'JavaScript uses the same type for integers and decimals.
		Example:
		let price = 9.99
		let quantity = 5
		let total = price * quantity'
	},
	{ #lesson 6 Operators
		'title': 'Operators',
		'description':
		'Addition or string join
		Subtraction
		Multiplication
		/ Division
		== Equal to (compares value)
		=== Strict equal (compares value and type)
		!= Not equal
		< > <= >= Comparison operators
		&& Logical AND
		|| Logical OR
		! Logical NOT'
	},
	{ #lesson 7 Arrays
		'title': 'Arrays',
		'description':
		'An array holds multiple values.
		let fruits = ["Apple", "Banana", "Mango"]
		You can access items by index:
		console.log(fruits[0]) // Apple
		To add an item:
		fruits.push("Orange")'
	},
	{ #lesson 8 Array Methods
		'title': 'Array Methods',
		'description':
		'push() – adds to the end
		pop() – removes from the end
		shift() – removes from the start
		unshift() – adds to the start
		filter() – returns matching items
		map() – creates a new array
		reduce() – reduces to a single value'
	},
	{ #lesson 9 Functions
		'title': 'Functions',
		'description':
		'Functions are blocks of code you can reuse.
		
		function greet() {
		console.log("Hello")
		}
		greet()
		
		Arrow functions (shorter syntax):
		let greet = () => {
		console.log("Hello")
		}'
	},
	{ #lesson 10 Conditional Statements
		'title': 'Conditional Statements',
		'description':
		'Use if, else if, and else to make decisions.
		
		let score = 90
		if (score >= 90) {
		console.log("Excellent")
		} else if (score >= 70) {
		console.log("Good")
		} else {
		console.log("Try again")
		}'
	},
	{ #lesson 11 Loops
		'title': 'Loops',
		'description':
		'Loops repeat code.
		for (let i = 0; i < 5; i++) {
		console.log(i)
		}
		while loops:
		let i = 0
		while (i < 5) {
		console.log(i)
		i++
		}'
	},
	{ #lesson 12 Objects
		'title': 'Objects',
		'description':
		'Objects store related data.
		let person = {
		
		name: "Sara",
		age: 30,
		isStudent: true
		}
		Access properties:
		console.log(person.name) // Sara'
	},
	{ #lesson 13 this Keyword
		'title': 'this Keyword',
		'description':
		'In a method, this refers to the object that owns the method.
		let user = {
		name: "Alex",
		greet() {
		console.log("Hi, I am " + this.name)
		}
		}
		user.greet()'
	},
	{ #lesson 14 Popup Boxes
		'title': 'Popup Boxes',
		'description':
		'alert("Hello") – shows a message
		confirm("Are you sure?") – yes/no
		prompt("Enter your name") – input box'
	},
	{ #lesson 15 Typeof
		'title': 'Typeof',
		'description':
		'Use typeof to check a data type.
		typeof 123 // number
		typeof "abc" // string
		typeof true // boolean
		typeof null // object
		typeof undefined // undefined'
	},
	{ #lesson 16 Constants
		'title': 'Constants',
		'description':
		'Use const to declare a variable that doesn’t change.
		const pi = 3.14'
	},
	{ #lesson 17 JavaScript in HTML
		'title': 'JavaScript in HTML',
		'description':
		'Add JavaScript to your webpage using the <script> tag.
		Example:
		<script> alert("Welcome to my site") </script>'
	}
]


func _on_back_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")
