/// @Basic Client Creation Mumbo Jumbo

client_socket = network_create_socket(network_socket_udp)
network_set_config(network_config_connect_timeout, 4000)
network_set_config(network_config_use_non_blocking_socket, 1)
server_ip = get_string("What is the Host IP?", "127.0.0.1")
server_port = get_string("What is the port?", string(PORT))
server_connected = false


buffer_size = 1024;
buffer_type = buffer_fixed;
buffer_alignment = 1;
send_buffer = buffer_create(buffer_size,buffer_type,buffer_alignment);

//Write a connection tag to the server
buffer_seek(send_buffer, buffer_seek_start, 0)
buffer_write(send_buffer, buffer_u8, Join)
buffer_write(send_buffer, buffer_string, "Test Name")
network_send_udp(client_socket, server_ip, server_port, send_buffer, buffer_tell(send_buffer))

//Create Map for Base objects to use
ServerData = ds_map_create()