
xx_start = view_xview
yy_start = view_yview
xx[0] = xx_start
yy[0] = yy_start
xx[1] = xx[0]+100
yy[1] = yy[0]+100
xx[2] = xx[1]+200
yy[2] = yy[1]+200
xx[3] = xx[0]+30
yy[3] = yy[0]+250
xx[4] = xx[0]+600
yy[4] = yy[0]+100
xx[5] = o_player.x
yy[5] = o_player.y-26

personality_health = clamp(personality_health,0,personality_health_max)

draw_set_color(c_black)
draw_rectangle(xx[5]-40,yy[5]-6,xx[5]+40,yy[5]+6,0)
draw_set_color(c_white)
_pc = (personality_health / personality_health_max) * 100;
draw_healthbar(xx[5]-40,yy[5]-6,xx[5]+40,yy[5]+6,_pc, c_black, c_red, c_green, 0, 1, 1);
draw_set_halign(fa_center)
draw_text(xx[5],yy[5]-32,personality_health)
draw_set_halign(fa_left)

draw_text(mouse_x_self,mouse_y_self,"value: "+string(xx[3]))

draw_set_font(Font1)
draw_set_color(c_black)
draw_text(xx[0],yy[0],"Text")
draw_set_color(c_white)

var _name_get = ""

if(keyboard_check_pressed(ord("B")))
{	
	inv_item_add(0)
}

//Left Button
custom_button(xx[3],yy[3],32,32,"INV",function(){custom_window_visible[0]=!custom_window_visible[0]})

// Inventory
if(custom_window_visible[0])
{
	draw_rectangle_color(xx[1]-6,yy[1]-6,xx[1]+4+inv_slot_size*inv_height,yy[1]+4+inv_slot_size*inv_width,c_grey,c_grey,c_grey,c_grey,0)
	for(var i = 0; i < ds_grid_height(inv_grid);i++)
	{
		for(var j = 0; j < ds_grid_width(inv_grid);j++)
		{
			draw_sprite(s_inv_slot,0,xx[1]+inv_slot_size*i,yy[1]+inv_slot_size*j)
			var _grid = inv_grid
			
			if(ds_exists(_grid,ds_type_grid))
			{	
			
				if(_grid[# j,i] != -1)
				{
					draw_sprite(s_rare,inv_item_rare_visible(_grid[# j,i]),xx[1]+inv_slot_size*i,yy[1]+inv_slot_size*j)
					draw_sprite(_grid[# j,i].sprite_i,0,xx[1]+(inv_slot_size/2)+inv_slot_size*i,yy[1]+(inv_slot_size/2)+inv_slot_size*j)
				}
			}

			if(point_in_rectangle(mouse_x,mouse_y,xx[1]+inv_slot_size*i,yy[1]+inv_slot_size*j,xx[1]+inv_slot_size_in_point+inv_slot_size*i,yy[1]+inv_slot_size_in_point+inv_slot_size*j))
			{
				
				if(inv_item_visible = s_item_void)
				{
					draw_set_alpha(0.4)
					draw_rectangle(xx[1]+inv_slot_size*i,yy[1]+inv_slot_size*j,xx[1]+inv_slot_size_in_point+inv_slot_size*i,yy[1]+inv_slot_size_in_point+inv_slot_size*j,0)
					draw_set_alpha(1)
				}
				if(ds_exists(_grid,ds_type_grid))
				{		
					if(_grid[# j,i] != -1)
					{
						inv_item_name = _grid[# j,i]
						_name_get = " "+inv_item_name.name+" "
					}else {
						_name_get = ""
						inv_item_name = ""
					}
					if(_grid[# j,i] = -1 && inv_item_visible != s_item_void)
					{
						if(mouse_check_button_pressed(mb_left))
						{
							_grid[# j,i] = inv_item_visible_grid
							inv_item_visible_grid = 0
							inv_item_visible = s_item_void
							mouse_clear(mb_left)
						}
					}
				
				}
				if(ds_exists(_grid,ds_type_grid))
				{		
					if(_grid[# j,i] != -1)
					{
						if(mouse_check_button_pressed(mb_left) && !keyboard_check(vk_lshift))
						{
							if(inv_item_visible == s_item_void)
							{
								inv_item_visible =_grid[# j,i].sprite_i
								inv_item_visible_grid = _grid[# j,i]
								_grid[# j,i] = -1
							}
							mouse_clear(mb_left)
						}else
						if(mouse_check_button_pressed(mb_left) && keyboard_check(vk_lshift))
						{
							/*
							// Armor body
							if(_grid[# j,i].type == ITEM_TYPE.ARMOR_BODY && custom_window_visible[1] ==  true)
							{
								/*show_message("type: "+string(_grid[# j,i].type)+
								"\nvisible: "+string(custom_window_visible[1]))
								
								if(custom_window_visible_value[0] != 0)
								{
									inv_item_add(custom_window_visible_value[0].index-1)
								}
								
								custom_window_visible_value[0] = _grid[# j,i]
								
								_grid[# j,i] = -1
								/*
								mouse_clear(mb_left)
							}
							// Armor shoes
							if(_grid[# j,i].type == ITEM_TYPE.ARMOR_SHOES && custom_window_visible[1] ==  true)
							{
								/*show_message("type: "+string(_grid[# j,i].type)+
								"\nvisible: "+string(custom_window_visible[2]))
								if(custom_window_visible_value[1] != 0)
								{
									inv_item_add(custom_window_visible_value[1].index-1)
								}
								
								custom_window_visible_value[1] = _grid[# j,i]
								_grid[# j,i] = -1
								/*
								mouse_clear(mb_left)
							}
							
							if(_grid[# j,i].type == ITEM_TYPE.ARMOR_HEAD && custom_window_visible[1] ==  true)
							{
								/*show_message("type: "+string(_grid[# j,i].type)+
								"\nvisible: "+string(custom_window_visible[2]))
								if(custom_window_visible_value[2] != 0)
								{
									inv_item_add(custom_window_visible_value[2].index-1)
								}
								
								custom_window_visible_value[2] = _grid[# j,i]
								_grid[# j,i] = -1
								
								mouse_clear(mb_left)
							}*/
							//draw_inv_slot_equipment_in_grid(_grid[# j,i],custom_window_visible_value[0],ITEM_TYPE.ARMOR_BODY,custom_window_visible[1])
							//draw_inv_slot_equipment_in_grid(_grid[# j,i])
						}
					}else if(_grid[# j,i] != -1 && inv_item_visible != s_item_void)
					{
						if(inv_item_visible_grid != _grid[# j,i])
						{
							if(mouse_check_button_pressed(mb_left))
							{
								inv_item_visible = _grid[# j,i].sprite_i
								var _item_self = _grid[# j,i]
								_grid[# j,i] = inv_item_visible_grid
								inv_item_visible_grid = _item_self
								mouse_clear(mb_left)
							}
						}
					}
				}
			
			}else if(!point_in_rectangle(mouse_x,mouse_y,xx[1],yy[1],xx[1]+inv_slot_size*inv_height,yy[1]+inv_slot_size*inv_width))
			{
				_name_get = ""
				inv_item_name = ""
			}
		}
	}
	
	draw_inv_slot_equipment(custom_window_visible[1],2,ITEM_TYPE.ARMOR_BODY,0,xx[4],yy[4]+48)
	draw_inv_slot_equipment(custom_window_visible[1],3,ITEM_TYPE.ARMOR_SHOES,1,xx[4],yy[4]+96)
	draw_inv_slot_equipment(custom_window_visible[1],1,ITEM_TYPE.ARMOR_HEAD,2,xx[4],yy[4])
	
}
// Settings



//Debug
if(keyboard_check_pressed(vk_escape))
{
	game_end()
}

var _mouse_x = mouse_x+20  
var _mouse_y = mouse_y+20

draw_sprite(inv_item_visible,0,mouse_x,mouse_y)

draw_set_color(c_dkgray)
draw_set_alpha(0.8)
draw_rectangle(_mouse_x,_mouse_y,_mouse_x+string_width(_name_get),_mouse_y+string_height(_name_get),0)
draw_set_alpha(1)
draw_set_color(c_white)


if(inv_item_name!="")
{
	draw_set_color(draw_inv_get_rare_colour(inv_item_name))
	draw_text(_mouse_x,_mouse_y," "+inv_item_name.name)
	draw_set_color(c_white)
	
}

//draw_text(_mouse_x,_mouse_y,_name_get)