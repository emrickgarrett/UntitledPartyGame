/// @Destroy Socket

network_destroy(client_socket)

if(!is_undefined(t_buffer)) {
	buffer_delete(t_buffer)
}
