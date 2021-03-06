/// @Basic Server Creation Mumbo Jumbo
server_socket = network_create_server(network_socket_udp, PORT, maxPlayers)
player_list = ds_map_create()

network_set_config(network_config_connect_timeout, 4000)
network_set_config(network_config_use_non_blocking_socket, 1)

if(server_socket < 0) {
	//Connection Error
	show_message("Connection Error")
} else {
	show_debug_message("Server Created")	
}


//Create Map for Base objects to use
ServerData = ds_map_create()
