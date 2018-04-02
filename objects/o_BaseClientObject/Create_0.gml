/// @Basic Client Creation Mumbo Jumbo

client_socket = network_create_socket(network_socket_tcp)
network_set_config(network_config_connect_timeout, 4000)
network_set_config(network_config_use_non_blocking_socket, 1)

var server = network_connect(client_socket, serverIp, PORT);
if(server < 0){
	//No connection, need to resend or prompt user
	show_debug_message("Whoops!")
} else {
	//Connected, to do	
	show_debug_message("Connected!")
}