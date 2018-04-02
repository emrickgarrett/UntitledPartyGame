/// @TODO

event_inherited()

//room_goto(r_PlaneGame)

//Create host Object and Client Object
instance_create_depth(-100,-100, 999, o_BaseServerObject)
instance_create_depth(-100, -100, 999, o_BaseHostClientObject)

//Transition Room (Create room script?)
room_goto(r_PlaneGame)
