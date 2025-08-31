extends Node

var player_data = {
	"settings": {
		"volume": 1.0
	},
	"achievements": {
		"easyStagePassed": false,
		"normalStagePassed": false,
		"hardStagePassed": false
	}
}

func save_player_data():
	#file path
	var save_path = "user://player_data.json"
	
	#tries to open file for wiriting
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	
	if file:
		#convert the player_data dictionary into JSON string
		var json_string = JSON.stringify(player_data)
		
		#write the JSON string file 
		file.store_string(json_string)

func load_player_data():
	#file path
	var save_path = "user://player_data.json"
	
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
