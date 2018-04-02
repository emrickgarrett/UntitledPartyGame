/// @Basic Client Creation Mumbo Jumbo

client_socket = network_create_socket(network_socket_udp)
network_set_config(network_config_connect_timeout, 4000)
network_set_config(network_config_use_non_blocking_socket, 1)

var server = network_connect(client_socket, "127.0.0.1", PORT);
if(server < 0) {
	//No connection, need to resend or prompt user
	show_debug_message(string(server))
	show_debug_message("Failed to connect to Host")
} else {
	//Connected, TODO	
	show_debug_message("Connected to Host!")
}
