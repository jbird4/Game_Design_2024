//If player touches a block
if place_meeting(x, y, obj_player) && !instance_exists(obj_diamond_warp){
	var inst = instance_create_depth(0, 0, -999, obj_diamond_warp);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
	inst.target_face = target_face;
}


