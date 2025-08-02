extends Panel

var skill_diff = 0
# 0 easy
# 1 normal
# 2 hard

func _on_easy_pressed() -> void:
	skill_diff=0
	$"Question Screen".visible = true

func _on_blank_space_pressed() -> void:
	self.hide()
