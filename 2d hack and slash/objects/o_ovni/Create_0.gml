ovni_sprite = choose(ovni_one,ovni_one,ovni_one,ovni_two);

image_index = ovni_sprite;
state = "move"
abduct = false;
x_speed = random_range(3,5);
if(x > room_width){
image_xscale = -1;}
if(x < 0){
image_xscale = 1;}
