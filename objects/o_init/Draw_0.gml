/// @description Insert description here
// You can write your code in this editor

#macro view_xview  __view_get( e__VW.XView, 0 )
#macro view_yview  __view_get( e__VW.YView, 0 )
//#macro view_wview  __view_get( e__VW.WView, 0 )
//#macro view_hview  __view_get( e__VW.HView, 0 )

#macro color_window_main_up #4770ad
#macro color_window_main #598cd9
#macro color_window_main_dawn #649ef5

enum ITEM_TYPE
{
	VOID,
	ARMOR_BODY,
	ARMOR_SHOES,
	ARMOR_HEAD
}

enum ITEM
{
	ARMOR_MIDDLE_VOID,
	ARMOR_MIDDLE_HEAD,
	ARMOR_MIDDLE_BODY,
	ARMOR_MIDDLE_SHOES,
	ARMOR_MIDDLE_DOUBLE,
	ARMOR_MIDDLE_STANDART,
	ARMOR_MIDDLE_IN
}

