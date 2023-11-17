var _tile = instance_position(mouse_x, mouse_y, obj_tile);

if(_tile == noone) {
	clear_focus();
} else {
	set_focus(_tile);
}

if(mouse_check_button_pressed(mb_left)){
	with(focused_tile) {
		tower = instance_create_depth(x, y, 100, obj_building, {sprite_index: spr_building_sprite})
	}
} else if(mouse_check_button_pressed(mb_right)){
	with(focused_tile) {
		tower = noone;
	}
}
