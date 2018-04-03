/// Get Map Id

if(instance_exists(o_BaseServer)) {
	ServerData = instance_find(o_BaseServer, 0).ServerData
	player_list = instance_find(o_BaseServer, 0).player_list
	server_socket = instance_find(o_BaseServer, 0).server_socket
} else {
	show_message("Server Not Found")	
}