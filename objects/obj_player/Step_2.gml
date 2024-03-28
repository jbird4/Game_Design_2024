var interaction_radius = 32; 

var _npc = instance_nearest(x, y, obj_NPC_Parent);

// Check if an NPC is within interaction distance
if (_npc != noone && point_distance(x, y, _npc.x, _npc.y) <= interaction_radius && !instance_exists(obj_textbox)) {
    _npc.showMessageIcon = true; // Trigger the NPC to show the message icon
	
	if(keyboard_check_pressed(vk_space)){
		create_textbox(_npc.defaultDialogue);
	}
}