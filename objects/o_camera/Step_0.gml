
shake *= 5; 
//движение этого объекта(за которым следит камера) за игроком, + тряска 

cam_w_half = (camera_get_view_width(cam) * 0.5); 
cam_h_half = (camera_get_view_height(cam) * 0.5); 
if instance_exists(follow) && camera_move 
{ 
	xTo = follow.x;
	yTo = follow.y;
} 

x += (xTo - x) / 25; 
y += (yTo - y) / 25; 

//shake_screen 
x += random_range(-shake,shake); 
y += random_range(-shake,shake); 
shake = max(0,shake-((1/shake_length)*shake_magnitude)); 

camera_set_view_pos(cam,x-cam_w_half,y-cam_h_half);







