var _camera = view_camera[0];
var _zoom_factor = .04;

if (mouse_check_button_pressed(mb_left)) {
    anchor_x = mouse_x;
    anchor_y = mouse_y;
} 

if (mouse_check_button(mb_left)) {
    var _xdelta = mouse_x - anchor_x;
    var _ydelta = mouse_y - anchor_y;

    var _new_x = camera_get_view_x(_camera) - _xdelta;
    var _new_y = camera_get_view_y(_camera) - _ydelta;

    camera_set_view_pos(_camera, _new_x, _new_y);

    // Update the anchor to the current mouse position for the next frame
    anchor_x = mouse_x;
    anchor_y = mouse_y;
}

if(mouse_wheel_up()){
	var _zoom_amount = (1 - _zoom_factor);
	var _zoom_width = camera_get_view_width(_camera) * _zoom_amount;
	var _zoom_height = camera_get_view_height(_camera) * _zoom_amount;
	camera_set_view_size(
		_camera,
		_zoom_width,
		_zoom_height
	)
}

if(mouse_wheel_down()) {
	var _zoom_amount = (1 + _zoom_factor);
	var _zoom_width = camera_get_view_width(_camera) * _zoom_amount;
	var _zoom_height = camera_get_view_height(_camera) * _zoom_amount;
	camera_set_view_size(
		_camera,
		_zoom_width,
		_zoom_height
	)
}