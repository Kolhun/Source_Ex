

function inv_item_self(_id = 0,_sprite = 0,_type = "",_name = "", _rare = 10) constructor
{
	var _inv_item = 
	{
		id_i : _id,
		sprite_i : _sprite,
		name : _name,
		type : _type,
		rare : _rare
	};
	return _inv_item

}

function inv_item_get_item(_item)
{
	var _inv_item_list = o_single.inv_item_list
	for(var i = 0; i < ds_list_size(_inv_item_list); i++)
	{
		var _item_get;
		if((_item-1) == i)
		{
			_item_get = _inv_item_list[| i]
		}
	}
	
	return _item_get
}

function inv_item_add(_item)
{
	var _grid = o_single.inv_grid
	var _is_find = false;
	for(var i = 0; i < ds_grid_width(_grid);i++)
	{
		for(var j = 0; j < ds_grid_height(_grid);j++)
		{
			if(ds_grid_get(_grid,i,j) == -1)
			{
				
				var _new_item = inv_item_get_item(_item)
				_grid[# i, j] = _new_item
				_is_find = true;
				break;
			}
			
		}
		if (_is_find) break;
	}
	
}
function inv_item_rare_visible(_item_in_inventory)
{
	var _inv_get_rare_index = 0
	var _inv_custom = _item_in_inventory

	if(_inv_custom.rare==1)
	{
		_inv_get_rare_index = 1
	}
	if(_inv_custom.rare==2)
	{
		_inv_get_rare_index = 2
	}
	if(_inv_custom.rare==3)
	{	
		_inv_get_rare_index = 3
	}
	if(_inv_custom.rare==4)
	{
		_inv_get_rare_index = 4
	}
	if(_inv_custom.rare==5)
	{
		_inv_get_rare_index = 5
	}
	
	return _inv_get_rare_index;
}

function draw_inv_slot_equipment(_active,_image_index,_item_type,_data_in,_xx,_yy)
{
	if(_active)
	{
		draw_sprite(s_inv_slot,_image_index,_xx,_yy)
		if(custom_window_visible_value[_data_in]!=0)
		{
			draw_sprite(s_rare,inv_item_rare_visible(custom_window_visible_value[_data_in]),_xx,_yy)
			draw_sprite(custom_window_visible_value[_data_in].sprite_i,0,_xx+(inv_slot_size/2),_yy+(inv_slot_size/2))
		}
		if(point_in_rectangle(mouse_x,mouse_y,_xx,_yy,_xx+sprite_get_width(s_inv_slot),_yy+sprite_get_height(s_inv_slot)-1))
		{
			draw_set_alpha(0.5)
			draw_rectangle(_xx,_yy,_xx+sprite_get_width(s_inv_slot)-1,_yy+sprite_get_height(s_inv_slot)-1,0)
			draw_set_alpha(1)
			if(mouse_check_button_pressed(mb_left) && !keyboard_check(vk_lshift))
			{
		
				if(inv_item_visible_grid != 0)
				{
					if(inv_item_visible_grid.type == _item_type)
					{
						custom_window_visible_value[_data_in] = inv_item_visible_grid
						inv_item_visible_grid = 0
						inv_item_visible = s_item_void	
						mouse_clear(mb_left)
					}
				}else{
					if(custom_window_visible_value[_data_in] != 0)
					{
						inv_item_visible_grid = custom_window_visible_value[_data_in]
						inv_item_visible = inv_item_visible_grid.sprite_i
						custom_window_visible_value[_data_in] = 0
						mouse_clear(mb_left)
					}
				}	
			
			}else if(mouse_check_button_pressed(mb_left) && keyboard_check(vk_lshift))
			{
				if(inv_item_visible_grid = 0 and custom_window_visible_value[_data_in] != 0)
				{
					inv_item_add(custom_window_visible_value[_data_in].id_i)
					custom_window_visible_value[_data_in] = 0
				}
			}
			if(mouse_check_button_pressed(mb_right))
			{
				if(inv_item_visible_grid = 0 and custom_window_visible_value[_data_in] != 0)
				{
					inv_item_add(custom_window_visible_value[_data_in].id_i)
					custom_window_visible_value[_data_in] = 0
				}
			}
		}
	}
}

function draw_inv_get_rare_colour(_item)
{
	var _get_item = _item;
	var _get_colour = 0;
	switch(_get_item.rare)
	{
		case 0: _get_colour = c_ltgray ;break;
		case 1: _get_colour = c_white ;break;
		case 2: _get_colour = c_green ;break;
		case 3: _get_colour = c_blue ;break;
		case 4: _get_colour = c_red ;break;
		case 5: _get_colour = c_orange ;break;
	}
	return _get_colour
}












