///send_packet_to_client(socket, buffer, ip)

var socket = argument0
var buffer = argument1
var ip = argument2

if(ds_map_exists(player_list, ip)) {
	var port = ds_map_find_value(ds_map_find_value(player_list, ip), "port");
	network_send_udp(socket, ip, port, buffer, buffer_tell(buffer))
	show_debug_message("Packet sent to user... did they get it?")
} else {
	show_debug_message("Failed to send packet from host to client with ip: " + string(ip))	
}

buffer_delete(buffer)