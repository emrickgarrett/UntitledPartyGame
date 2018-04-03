/// @Connection between Client/Server Mumbo Jumbo

t_buffer = ds_map_find_value(async_load, "buffer")
var hasNetworkData = false

if(!is_undefined(t_buffer)) {
	buffer_seek(t_buffer, buffer_seek_start, 0)
	
	var cmd_id = buffer_read(t_buffer, buffer_u8)
	
	switch(cmd_id) {
		case Join:
			var joinStatus = buffer_read(t_buffer, buffer_bool)
			if(!joinStatus) {
				//Lobby was full :(	
				show_debug_message("SHITTERS FULL")
				show_message("Lobby is full")
				room_goto(TestRoom)
			} else {
				//Success!	
				show_debug_message("Join Success! :D")
				server_connected = true
			}
		break;
		case Leave:
		
		break;
		case RoomChange:
			var newRoom = buffer_read(t_buffer, buffer_string)
			room_goto(get_room_by_string(newRoom))
		break;
		case GeneralData:
			
		break;
		default:
			ds_map_add(ServerData, ServerPackets, t_buffer)
			ds_map_add(ServerData, CommandType, cmd_id)
			hasNetworkData = true
		break;
	}
} else {
	//No Data this step	
	ds_map_clear(ServerData)
}