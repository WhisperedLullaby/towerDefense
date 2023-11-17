if(not hovered) {
	draw_self();
} else {
	shader_set(sh_lighten_shader);
	draw_self();
	shader_reset();
}

if(tower != noone){
	with(tower) {
		x = other.x;
		y = other.y;
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		draw_self();
	}
}