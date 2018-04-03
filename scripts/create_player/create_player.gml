///create_player(playerId, ip, port, name)

var playerId = argument0;
var playerIp = argument1;
var playerPort = argument2;
var playerName = argument3;

var player = ds_map_create();

ds_map_add(player, "id", playerId);
ds_map_add(player, "score", 0);
ds_map_add(player, "ip", playerIp);
ds_map_add(player, "port", playerPort);
ds_map_add(player, "name", playerName);

return player