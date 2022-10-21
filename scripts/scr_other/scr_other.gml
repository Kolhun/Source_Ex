// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function __view_get(argument0, argument1) 
{
	var __prop = argument0;
	var __index = argument1;
	var __res = -1;

	switch(__prop)
	{
	case e__VW.XView: var __cam = view_get_camera(__index); __res = camera_get_view_x(__cam); break;
	case e__VW.YView: var __cam = view_get_camera(__index); __res = camera_get_view_y(__cam); break;
	case e__VW.WView: var __cam = view_get_camera(__index); __res = camera_get_view_width(__cam); break;
	case e__VW.HView: var __cam = view_get_camera(__index); __res = camera_get_view_height(__cam); break;
	case e__VW.Angle: var __cam = view_get_camera(__index); __res = camera_get_view_angle(__cam); break;
	case e__VW.HBorder: var __cam = view_get_camera(__index); __res = camera_get_view_border_x(__cam); break;
	case e__VW.VBorder: var __cam = view_get_camera(__index); __res = camera_get_view_border_y(__cam); break;
	case e__VW.HSpeed: var __cam = view_get_camera(__index); __res = camera_get_view_speed_x(__cam); break;
	case e__VW.VSpeed: var __cam = view_get_camera(__index); __res = camera_get_view_speed_y(__cam); break;
	case e__VW.Object: var __cam = view_get_camera(__index); __res = camera_get_view_target(__cam); break;
	case e__VW.Visible: __res = view_get_visible(__index); break;
	case e__VW.XPort: __res = view_get_xport(__index); break;
	case e__VW.YPort: __res = view_get_yport(__index); break;
	case e__VW.WPort: __res = view_get_wport(__index); break;
	case e__VW.HPort: __res = view_get_hport(__index); break;
	case e__VW.Camera: __res = view_get_camera(__index); break;
	case e__VW.SurfaceID: __res = view_get_surface_id(__index); break;
	default: break;
	};

	return __res;


}

function __init_view() 
{
	enum e__VW
	{
		XView,
		YView,
		WView,
		HView,
		Angle,
		HBorder,
		VBorder,
		HSpeed,
		VSpeed,
		Object,
		Visible,
		XPort,
		YPort,
		WPort,
		HPort,
		Camera,
		SurfaceID,
	};

}

function custom_window_create()
{
	custom_window = {
		is_visible:false,
		variable:"",
		x_size:0,
		y_size:0
		
	}
}

function custom_window(_x,_y,_width,_height)
{

	draw_rectangle_colour(_x,_y,_x+_width,_y+_height,color_window_main,color_window_main,color_window_main_dawn,color_window_main_dawn,0)
	draw_rectangle_colour(_x,_y,_x+_width,_y+26,color_window_main_up,color_window_main_up,color_window_main,color_window_main,0)
	
	/*
	draw_set_color(c_red)
	draw_rectangle(_x+300-26+2,yy[3]+2,_x+300-2,yy[3]+26-2,1)
	draw_set_color(c_lime)
	draw_rectangle(_x+300-26-26+2,yy[3]+2,_x-26+300-2,yy[3]+26-2,1)
	if(point_in_rectangle(mouse_x,mouse_y,_x,yy[3]+2,xx[3]-26+300-2-1,yy[3]+26-2-1))
	{
		draw_set_alpha(0.8)
		draw_rectangle(xx[3]+300-26-26+2,yy[3]+2,xx[3]-26+300-2,yy[3]+26-2,0)
		draw_set_alpha(1)
		
	}*/
}

function custom_button(_x,_y,_size_x,_size_y,_text,callback)
{
	draw_set_color(c_dkgray)
	draw_rectangle(_x,_y,_x+_size_x,_y+_size_y,0)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_text(_x+(_size_x/2),_y+(_size_y/2),_text)
	draw_set_halign(fa_left)
	draw_set_valign(fa_left)
	
	if(point_in_rectangle(mouse_x,mouse_y,_x,_y,_x+_size_x-1,_y+_size_y-1))
	{
		draw_set_alpha(0.5)
		draw_rectangle(_x,_y,_x+_size_x,_y+_size_y,0)
		draw_set_alpha(1)
		if(mouse_check_button_pressed(mb_left))
		{
			callback()
		}
	}
}













