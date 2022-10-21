
mouse_x_self = 0
mouse_y_self = 0

cursor_sprite = s_cursor

inv_width = 5
inv_height = 9

xx[0] = 0
yy[0] = 0
xx[1] = 0
yy[1] = 0
xx[2] = 0
yy[2] = 0


inv_slot_size = 48
inv_slot_size_in_point = inv_slot_size-1

// Устарело
move_window_value[0] = false
move_window_value_released[0] = false

custom_window_visible[0] = true // Inventory
custom_window_visible[1] = true // Settings
/*
custom_window_visible[2] = true // Armor shoes
custom_window_visible[2] = true // Armor shoes*/
custom_window_visible_value[0] = 0 // Armor body slot
custom_window_visible_value[1] = 0 // Armor shoes slot
custom_window_visible_value[2] = 0 // Armor shoes slot

//custom_window_item_visible = 0

instance_create_depth(o_player.x,o_player.y,1,o_camera)

personality_health_max = 20
personality_health = personality_health_max


inv_item_name = ""
inv_item_visible = s_item_void
inv_item_visible_grid = 0

inv_item_list = ds_list_create()
ds_list_add(inv_item_list,inv_item_self(ITEM.ARMOR_MIDDLE_STANDART,Sprite14,ITEM_TYPE.ARMOR_HEAD,"Кожаный шлем",0))
ds_list_add(inv_item_list,inv_item_self(ITEM.ARMOR_MIDDLE_HEAD,Sprite14,ITEM_TYPE.ARMOR_HEAD,"Кожаный шлем",1))
ds_list_add(inv_item_list,inv_item_self(ITEM.ARMOR_MIDDLE_BODY,Sprite14,ITEM_TYPE.ARMOR_HEAD,"Кожаный шлем",2))
ds_list_add(inv_item_list,inv_item_self(ITEM.ARMOR_MIDDLE_SHOES,Sprite14,ITEM_TYPE.ARMOR_HEAD,"Кожаный шлем",3))
ds_list_add(inv_item_list,inv_item_self(ITEM.ARMOR_MIDDLE_DOUBLE,Sprite14,ITEM_TYPE.ARMOR_HEAD,"Кожаный шлем",4))
ds_list_add(inv_item_list,inv_item_self(ITEM.ARMOR_MIDDLE_IN,Sprite14,ITEM_TYPE.ARMOR_HEAD,"Кожаный шлем",5))

/*
ds_list_add(inv_item_list,inv_item_self(ITEM.ARMOR_MIDDLE_BODY,ITEM_TYPE.VOID,"Apple",21))
ds_list_add(inv_item_list,inv_item_self(ITEM.ARMOR_MIDDLE_SHOES,ITEM_TYPE.VOID,"Меч",41))

ds_list_add(inv_item_list,inv_item_self(4,ITEM_TYPE.VOID,"Желтое Яблоко",61))
ds_list_add(inv_item_list,inv_item_self(5,ITEM_TYPE.ARMOR_BODY,"Armor",81))
ds_list_add(inv_item_list,inv_item_self(6,ITEM_TYPE.ARMOR_SHOES,"Кокос",101))
ds_list_add(inv_item_list,inv_item_self(7,ITEM_TYPE.ARMOR_HEAD,"Апельсин",51))
*/
inv_grid = ds_grid_create(inv_width,inv_height)
ds_grid_set_region(inv_grid,0,0,inv_width,inv_height,-1)

//show_message(ITEM.ARMOR_MIDDLE_HEAD-1)
inv_item_add(ITEM.ARMOR_MIDDLE_STANDART)
inv_item_add(ITEM.ARMOR_MIDDLE_HEAD)
inv_item_add(ITEM.ARMOR_MIDDLE_BODY)
inv_item_add(ITEM.ARMOR_MIDDLE_SHOES)
inv_item_add(ITEM.ARMOR_MIDDLE_DOUBLE)
inv_item_add(ITEM.ARMOR_MIDDLE_IN)

/*

inv_item_add(0)
inv_item_add(1)
inv_item_add(2)
inv_item_add(3)
inv_item_add(4)
inv_item_add(5)
inv_item_add(6)
/*
inv_item_add(1)
inv_item_add(2)
inv_item_add(1) 
inv_item_add(0)
inv_item_add(2)
inv_item_add(4)
inv_item_add(3)
inv_item_add(5)




