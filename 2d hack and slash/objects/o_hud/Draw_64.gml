#region drawHealth
var hpX = 8;
var hpY = 8;
var hp_width = 198;
var hp_height = 6;
if (instance_exists(o_mainCharacter)){
	drawHp = lerp(drawHp,o_mainCharacter.hp,0.1);
	drawMaxHP = o_mainCharacter.maxHp;
}else{
	drawHp = lerp(drawHp, 0, 0.1);
}
var hpPercent = drawHp / drawMaxHP;
draw_rectangle_color(hpX,hpY,hpX+(hp_width * hpPercent),hpY+hp_height,
						c_purple,c_purple,c_purple,c_purple,false);
draw_line_width_color(hpX-1,hpY-1,hpX+hp_width,hpY-1,1,c_white,c_white);
draw_line_width_color(hpX-1,hpY+hp_height,hpX+hp_width,hpY+hp_height,1,c_white,c_white);
draw_line_width_color(hpX-1,hpY-1,hpX-1,hpY+hp_height,1,c_white,c_white);
draw_line_width_color(hpX+hp_width,hpY-1,hpX+hp_width,hpY+hp_height,1,c_white,c_white);

if(!instance_exists(o_mainCharacter)){exit;}
#endregion

#region drawKills
var text = "kills: "+ string(o_mainCharacter.kills);
var textWidth = string_width(text);
var textHeight = string_height(text);
var start_x = 8;
var start_y = 18;
var padding_x = 6; 
var padding_y = 4;
draw_set_alpha(0.5);
draw_rectangle_color(start_x,start_y, start_x + textWidth + padding_x, start_y+textHeight + padding_y, 
						c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);
draw_text_color(start_x+padding_x/2,start_y+padding_y/2,text,c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,1);
#endregion

#region drawLevel
var text = "Level: "+ string(o_mainCharacter.level);
start_x += textWidth + padding_x*11;
var textWidth = string_width(text);
var textHeight = string_height(text);
draw_set_alpha(0.5);
draw_rectangle_color(start_x,start_y, start_x + textWidth + padding_x, start_y+textHeight + padding_y, 
						c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);
draw_text_color(start_x+padding_x/2,start_y+padding_y/2,text,c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,1);
#endregion