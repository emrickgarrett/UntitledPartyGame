///send_packet_to_client(type, data, dataType, socket)

var type = argument0
var data = argument1
var dataType = argument2
var socket = argument3

var t_buffer = buffer_create(256, buffer_grow, 1)
buffer_seek(t_buffer, buffer_seek_start, 0)
buffer_write(t_buffer, buffer_u16, type)
buffer_write(t_buffer, dataType, data)

network_send_packet(socket, t_buffer, buffer_tell(t_buffer))

buffer_delete(t_buffer)