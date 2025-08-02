extends Panel



func _on_html_pressed() -> void:
	$SkillDifficulty.visible = true


func _on_css_pressed() -> void:
	$SkillDifficulty.visible = true


func _on_js_pressed() -> void:
	$SkillDifficulty.visible = true


func _on_blank_space_pressed() -> void:
	self.hide()
