///create_player(playerId, ip)

var playerId = argument0;
var playerIp = argument1;

var player = ds_map_create();

ds_map_add(player, "id", playerId);
ds_map_add(player, "score", 0);
ds_map_add(player, "ip", playerIp);
ds_map_add(player, "name", "Test");