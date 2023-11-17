/// @description Insert description here
// You can write your code in this editor
TILE_INDEX = {
	tile0: undefined,
	tile1: spr_grass_sprite,
	tile2: spr_grass_sprite2,
	tile3: spr_grass_sprite3
}

function draw_map() {
	var _tile_layout = make_map_layout();
	var _tile_xscale = 2;
	var _tile_yscale = 2;
	var _tile_width = 16 * _tile_xscale;
	var _tile_height = 8 * _tile_yscale;
	
	for(var _row = 0; _row < array_length(_tile_layout); _row++) {
	    for(var _column = 0; _column < array_length(_tile_layout[_row]); _column++){
        
	        var _tile_index = "tile" + string(_tile_layout[_row][_column]);
        
	        var _sprite = variable_struct_get(TILE_INDEX, _tile_index);
			show_debug_message(_sprite)
        
	        if(_sprite == undefined) continue;
        
	        var _instance = instance_create_depth(
	            100 + (_tile_width / 2 * _column),
	            100 + (_tile_height / 2 * _row),
	            -_row,
	            obj_tile
	        );
			show_debug_message(_instance);
        
	        _instance.sprite_index = _sprite;
	        _instance.image_xscale = _tile_xscale;
	        _instance.image_yscale = _tile_yscale;
	    }
	}

}

function make_map_layout() {
    return [
        [0,0,0,0,1,0,0,0,0,0,0,0,0],
        [0,0,0,1,0,1,0,0,0,0,0,0,0],
		[0,0,1,0,1,0,1,0,0,0,0,0,0],
		[0,1,0,1,0,1,0,1,0,0,0,0,0],
		[1,0,1,0,1,0,2,0,1,0,0,0,0],
		[0,1,0,1,0,1,0,1,0,1,0,0,0],
		[0,0,1,0,1,0,1,0,1,0,1,0,0],
		[0,0,0,1,0,1,0,1,0,1,0,1,0],
		[0,0,0,0,1,0,1,0,1,0,1,0,1],
		[0,1,0,1,0,1,0,0,0,0,0,1,0],
		[1,0,1,0,3,0,1,0,0,0,1,0,1],
		[0,1,0,1,0,1,0,0,0,0,0,1,0],
		[0,0,1,0,1,0,0,0,1,0,1,0,1],
		[0,0,0,1,0,0,0,1,0,1,0,1,0]
    ];
}