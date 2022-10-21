cam = view_camera[0]; 

disp_w = 1024//display_get_width()
disp_h = 768// display_get_height()

global.viewsize = 0

depth=1
//»» моя часть кода
var ww, hh, aspect, nww, nhh; 
ww = disp_w; hh = disp_h; 
nhh = hh/global.viewsize; 
aspect = hh / nhh; 
nww = ww / aspect;
view_wviews = disp_w
view_hviews = disp_h
camera_set_view_size(cam,view_wviews,view_hviews); 

cam_w = camera_get_view_width(cam); 
cam_h = camera_get_view_height(cam); 
cam_w_half = (cam_w * 0.5); 
cam_h_half = (cam_h * 0.5); 
follow = o_player; 
xTo = x;//xstart; 
yTo = y;//ystart; 
camera_move = true; //Может ли двигаться камера или нет 

shake_length = 0; 
shake_magnitude = 0; 
shake = 0;
//camera_set_







