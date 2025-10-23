extends AudioStreamPlayer2D

func _ready():
	# Play music only if it's not already playing (to prevent restart on scene change)
	if not is_playing():
		play()
