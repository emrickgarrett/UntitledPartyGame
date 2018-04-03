/// @Connection between Client/Server Mumbo Jumbo

t_buffer = ds_map_find_value(async_load, "buffer")

if(!is_undefined(t_buffer)) {
	buffer_seek(t_buffer, buffer_seek_start, 0)
	
	var cmd_id = buffer_read(t_buffer, buffer_u8)
	
	switch(cmd_id) {
		case Join:
			var joinStatus = buffer_read(t_buffer, buffer_bool)
			if(!joinStatus) {
				//Lobby was full :(	
				show_debug_message("SHITTERS FULL")
			} else {
				//Success!	
				show_debug_message("Join Success! :D")
			}
		break;
		case Leave:
		
		break;
		case GeneralData:
		
		break;
		default:
			//nah fam
		break;
	}
} else {
	//No Data this step	
}