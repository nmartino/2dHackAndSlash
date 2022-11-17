var cameraId = view_camera[0];
var viewWidth = camera_get_view_width(cameraId);
var viewHeight = camera_get_view_height(cameraId);
display_set_gui_size(viewWidth,viewHeight);

if(!instance_exists(o_mainCharacter)){exit;}
drawHp = o_mainCharacter.hp;
drawMaxHP = o_mainCharacter.maxHp;
draw_set_font(f_one);
