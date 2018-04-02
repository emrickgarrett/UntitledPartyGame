/// Get Map Id

if(instance_exists(o_BaseServer)) {
	ServerData = instance_find(o_BaseServer, 0).ServerData	
} else {
	show_message("Server Not Found")	
}