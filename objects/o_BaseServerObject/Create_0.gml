/// @Basic Server Creation Mumbo Jumbo
server_socket = network_create_server(network_socket_tcp, PORT, maxPlayers)
socketlist = ds_list_create()
network_set_config(network_config_connect_timeout, 4000)
network_set_config(network_config_use_non_blocking_socket, 1)

if(server_socket < 0) {
	//Connection Error
	show_message("Connection Error")
} else {
	show_debug_message("Server Created")	
}



