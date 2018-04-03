///Networking Constants

//General Networking Constants
#macro GameStart 0
#macro LocationUpdate 1
#macro Death 2
#macro Pickup 3
#macro RoomChange 4
#macro TurnChange 5
#macro GeneralData 6
#macro Join 7
#macro Leave 8
#macro Ready 9
#macro Talk 10
#macro Vote 11
#macro Confirmation 12 // Use this to confirm TCP like the user has received the packet (useful for game start/room transitions)

//Server Constants
#macro HeartBeat 1000 //See if the user is still alive (if not we can replace with AI and free a slot)
#macro ServerSender 1001
#macro CommandType 1002
#macro ServerPackets 1003
#macro PORT 10500
#macro HOSTCLIENTPORT 10500