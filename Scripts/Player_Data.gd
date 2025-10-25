extends Node

var player_data = {
	"settings": {
		"volume": 1 
	},
	"achievements": {
		"easyStagePassed": false,
		"normalStagePassed": false,
		"hardStagePassed": false
	}
}
func delete_player_data():
	var save_path = "user://ever_after_player_data.json"
	var dir = DirAccess.open("user://")

	if dir.file_exists("ever_after_player_data.json"):
		var error = dir.remove("ever_after_player_data.json")
		if error == OK:
			print("Player data deleted.")
		else:
			print("Failed to delete player data. Error code:", error)
	else:
		print("No player data file to delete.")

	# Close the game
	get_tree().quit()


func save_player_data():
	#file path
	var save_path = "user://ever_after_player_data.json"
	
	#tries to open file for wiriting
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	
	if file:
		#convert the player_data dictionary into JSON string
		var json_string = JSON.stringify(player_data)
		
		#write the JSON string file 
		file.store_string(json_string)

func load_player_data():
	#file path
	var save_path = "user://ever_after_player_data.json"
	
	#check if file exists before trying to open it 
	if FileAccess.file_exists(save_path):
		#attempt to open the file for reading
		var file = FileAccess.open(save_path, FileAccess.READ)
		
		if file:
			#read the file as text
			var data = file.get_as_text()
			
			#parse the JSOn string into dictionary
			var parsed = JSON.parse_string(data)
			
			if parsed:
				#assign parsed as player_data
				player_data = parsed
	
	#set volume base on loaded data
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), player_data["settings"]["volume"])
