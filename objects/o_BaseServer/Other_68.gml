/// @Handle general async networking logic
//TODO Change to UDP -- currently TCP logic

var t_sender = ds_map_find_value(async_load, "ip")
var t_port = ds_map_find_value(async_load, "port")

var t_buffer = pointer_null
var cmd_type = pointer_null
var hasNetworkData = false

t_buffer = ds_map_find_value(async_load, "buffer")

var size = 1024;
var type = buffer_fixed;
var alignment = 1;
send_buffer = buffer_create(size,type,alignment);

if(!is_undefined(t_buffer)) {
	var cmd_type = buffer_read(t_buffer, buffer_u8)
	
	switch(cmd_type) {
		case Join:
			if(humanPlayers < 4) {
				if(!ds_map_exists(player_list, t_sender)) {
					var name = buffer_read(t_buffer, buffer_string)
					ds_map_add(player_list, t_sender, create_player(++humanPlayers, t_sender, t_port, name))
					show_debug_message("User Connected from ip: " + string(t_sender) + " with ID: " + string(humanPlayers) + " and Name: " + string(name))
					//send valid join
					buffer_seek(send_buffer, buffer_seek_start, 0)
					buffer_write(send_buffer, buffer_u8, Join)
					buffer_write(send_buffer, buffer_bool, true)
					send_packet_to_client(server_socket, send_buffer, t_sender)
					
				} else {
					//Already Joined, ignore	
				}
			} else {
				//send lobby full error	
				buffer_seek(send_buffer, buffer_seek_start, 0)
				buffer_write(send_buffer, buffer_u8, Join)
				buffer_write(send_buffer, buffer_bool, false)
				send_packet_to_client(server_socket, send_buffer, t_sender)
			}
		break;
		case Leave:
			//remove human player
			//send confirm message to user (if they are there to receive it)
		break;
		case GeneralData:
			//Some general things, like votes, etc, etc
		break;
		default:
			ds_map_add(ServerData, ServerPackets, t_buffer)
			ds_map_add(ServerData, ServerSender, t_sender)
			ds_map_add(ServerData, CommandType, cmd_type)
			hasNetworkData = true
		break;
	}
}

/*
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
*/
