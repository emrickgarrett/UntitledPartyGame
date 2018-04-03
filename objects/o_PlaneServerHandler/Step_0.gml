/// Handle Updates From Server

if(!is_undefined(data) && !is_undefined(sender) && !is_undefined(command)) {
	show_debug_message("Data retrieved!")
}

/// Send game start
if(ds_map_size(player_list) > 0) {
	var size = 1024;
	var type = buffer_fixed;
	var alignment = 1;
	send_buffer = buffer_create(size,type,alignment);
	buffer_seek(send_buffer, buffer_seek_start, 0)
	buffer_write(send_buffer, buffer_u8, GameStart)
	
	var size = ds_map_size(player_list)
	var key = ds_map_find_first(player_list)
	for(var i = 0; i < size; i++) {
		send_packet_to_client(server_socket, send_buffer, key)
		key = ds_map_find_next(player_list, key)
	}
	
	buffer_delete(send_buffer)
} else {
	//No Players... odd
	show_debug_message("No players were present... weird.")
}