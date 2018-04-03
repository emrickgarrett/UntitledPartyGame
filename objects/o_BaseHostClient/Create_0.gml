/// @Basic Client Creation Mumbo Jumbo

client_socket = network_create_socket(network_socket_udp)
network_set_config(network_config_connect_timeout, 4000)
network_set_config(network_config_use_non_blocking_socket, 1)
var server_ip = "127.0.0.1"

var size = 1024;
var type = buffer_fixed;
var alignment = 1;
send_buffer = buffer_create(size,type,alignment);

//Write a connection tag to the server
buffer_seek(send_buffer, buffer_seek_start, 0)
buffer_write(send_buffer, buffer_u8, Join)
buffer_write(send_buffer, buffer_string, "Test Name")
network_send_udp(client_socket, server_ip, PORT, send_buffer, buffer_tell(send_buffer))