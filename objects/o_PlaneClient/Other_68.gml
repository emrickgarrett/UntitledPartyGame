/// @Handle Networking Code

if(ServerData != -1) {
	if(ds_map_exists(ServerData, ServerPackets) && ds_map_exists(ServerData, CommandType)) {
		var t_buffer = ds_map_find_value(ServerData, ServerPackets)
		var t_cmd = ds_map_find_value(ServerData, CommandType)
	
		switch(t_cmd) {
			case GameStart:
				//Give Player control of plane
				show_debug_message("Game Started!")
				global.gameRunning = true
			break;
			case LocationUpdate:
				//Update Location of all planes
				show_debug_message("Location Updated!")
			break;
			case Death:
				//Let player know a plane has died :(
				show_debug_message("Rip in peace")
			break;
			case Talk:
				//Possible Chat Extension in the future?
				show_debug_message("Going to go unimplemented for a while")
			break;
		}
	}
}
