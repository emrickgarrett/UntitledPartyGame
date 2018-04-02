/// @Handle general async networking logic
//TODO Change to UDP -- currently TCP logic

var n_id = ds_map_find_value(async_load, "id")

var t_buffer = pointer_null
var cmd_type = pointer_null
var inst = pointer_null
var hasNetworkData = false

if(n_id == server_socket) {
	show_message("I'm at least here")
	var type = ds_map_find_value(async_load, "type")
	var socket = ds_map_find_value(async_load, "socket")
	switch(type) {
		case network_type_connect:
		
			//Will want to put this in my player list
			ds_list_add(socketlist, socket)
			show_message("Connect")
			humanPlayers++
		break;
		case network_type_disconnect:
			//User Disconnected
			show_message("Disconnect")
			humanPlayers--
		break;
		case network_type_data:
			//Handle Data
			t_buffer = ds_map_find_value(async_load, "buffer")
			cmd_type = buffer_read(t_buffer, buffer_u16)
			inst = ds_map_find_value(socketlist, socket)
			if(cmd_type == GeneralData) {
				//Something for high level adjustments (joining/leaving, namechange, etc)
			} else {
				ds_map_add(ServerData, ServerPackets, t_buffer)
				ds_map_add(ServerData, ServerSender, inst)
				ds_map_add(ServerData, CommandType, cmd_type)
				hasNetworkData = true	
			}
		break;
	}
}
