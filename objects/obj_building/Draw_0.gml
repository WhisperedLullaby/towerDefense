//DO NOTHING
// THE TILE DRAWS IT. STOP
if(hovered) {
	shader_set(sh_lighten_shader);
	draw_self();
	shader_reset();
}