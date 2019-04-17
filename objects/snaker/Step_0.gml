/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 03E52FE2
/// @DnDArgument : "code" "if (add_timer == 0){$(13_10)if (keyboard_check(ord("W"))&&snake_direction != "down") $(13_10){$(13_10) snake_direction = "up"$(13_10)	image_angle = 0;$(13_10)}$(13_10)$(13_10)if (keyboard_check(ord("S"))&&snake_direction != "up") $(13_10){$(13_10) snake_direction = "down"$(13_10)	image_angle = 180;$(13_10)}$(13_10)$(13_10)if (keyboard_check(ord("A"))&&snake_direction != "right") $(13_10){$(13_10) snake_direction = "left"$(13_10)	image_angle = 90;$(13_10)}$(13_10)$(13_10)if (keyboard_check(ord("D"))&&snake_direction != "left") $(13_10){$(13_10) snake_direction = "right"$(13_10)	image_angle = 270;$(13_10)}$(13_10)}$(13_10)if (timer == 0){$(13_10)	add_timer = 12;$(13_10)	timer = 15;$(13_10)	x_go = 0;$(13_10)	y_go = 0;$(13_10)	snake_x_for_future = x;$(13_10)	snake_y_for_future = y;$(13_10)if (snake_direction == "up"){$(13_10)	y_go = -32;$(13_10)}$(13_10)if (snake_direction == "down"){$(13_10)	$(13_10)	y_go = 32;$(13_10)	$(13_10)}$(13_10)if (snake_direction == "left"){$(13_10)	$(13_10)	x_go = -32;$(13_10)	$(13_10)}$(13_10)if (snake_direction == "right"){$(13_10)	$(13_10)	x_go = 32;$(13_10)	$(13_10)}$(13_10)}$(13_10)else{$(13_10)	if (add_timer == 0){$(13_10)		if (keyboard_check(vk_shift)){	$(13_10)			for (i = 0; timer != 0&&i < 4; ++i){$(13_10)				--timer;$(13_10)			}$(13_10)		}$(13_10)		else{$(13_10)			--timer;$(13_10)		}$(13_10)	}$(13_10)	else{$(13_10)		if (keyboard_check(vk_shift)){$(13_10)			if (lose = false){$(13_10)			for (i = 0; add_timer != 0&&i < 4; ++i){$(13_10)				x += x_go/12;$(13_10)				y += y_go/12;$(13_10)				--add_timer;$(13_10)			}$(13_10)			}$(13_10)		}$(13_10)		else{$(13_10)			if (lose = false){$(13_10)			x += x_go/12;$(13_10)			y += y_go/12;$(13_10)			--add_timer;$(13_10)			}$(13_10)		}$(13_10)		timer = 15;$(13_10)		if (add_timer == 0){$(13_10)			for (i = lv; i > 0; --i){$(13_10)				snake_body_x[i] = snake_body_x[i-1];$(13_10)				snake_body_y[i] = snake_body_y[i-1];$(13_10)			}$(13_10)			snake_body_x[0] = snake_x_for_future;$(13_10)			snake_body_y[0] = snake_y_for_future;$(13_10)		}$(13_10)			}$(13_10)}$(13_10)if (timer == 0){$(13_10)if (room_width/2-(room_width/2 mod 32)-32*9 > x&&snake_direction == "left"){$(13_10)	lose = true$(13_10)}$(13_10)if (room_width/2-(room_width/2 mod 32)+32*10 < x&&snake_direction == "right"){$(13_10)	lose = true$(13_10)}$(13_10)if (room_height/2-(room_height/2 mod 32)-32*8 > y&&snake_direction == "up"){$(13_10)	lose = true$(13_10)}$(13_10)if (room_height/2-(room_height/2 mod 32)+32*10 < y&&snake_direction == "down"){$(13_10)	lose = true$(13_10)}$(13_10)			for (i = lv; i > 0; --i){$(13_10)				if (snake_body_x[i] = x&&snake_body_y[i] = y){$(13_10)					lose = true$(13_10)				}$(13_10)			}$(13_10)}$(13_10)$(13_10)if (keyboard_check(ord("R"))) {$(13_10)	$(13_10)x = room_width/2 + self.sprite_width/2$(13_10)y = room_height/2 + self.sprite_height/2$(13_10)image_angle = 0;$(13_10)$(13_10)x = x - x mod 32$(13_10)y = y - y mod 32$(13_10)$(13_10)timer = 60;$(13_10)add_timer = 0;$(13_10)x_go = 0;$(13_10)y_go = 0;$(13_10) snake_direction = "up"$(13_10) $(13_10) lv = 0;$(13_10) for (i = 0; i < 1000; ++i){$(13_10) snake_body_x[i] = x;$(13_10) snake_body_y[i] = y;$(13_10) }$(13_10)	lose = false$(13_10)	snake_x_for_future = x;$(13_10)	snake_y_for_future = y;$(13_10)	$(13_10)	draw_set_font(font0)$(13_10)}"
if (add_timer == 0){
if (keyboard_check(ord("W"))&&snake_direction != "down") 
{
 snake_direction = "up"
	image_angle = 0;
}

if (keyboard_check(ord("S"))&&snake_direction != "up") 
{
 snake_direction = "down"
	image_angle = 180;
}

if (keyboard_check(ord("A"))&&snake_direction != "right") 
{
 snake_direction = "left"
	image_angle = 90;
}

if (keyboard_check(ord("D"))&&snake_direction != "left") 
{
 snake_direction = "right"
	image_angle = 270;
}
}
if (timer == 0){
	add_timer = 12;
	timer = 15;
	x_go = 0;
	y_go = 0;
	snake_x_for_future = x;
	snake_y_for_future = y;
if (snake_direction == "up"){
	y_go = -32;
}
if (snake_direction == "down"){
	
	y_go = 32;
	
}
if (snake_direction == "left"){
	
	x_go = -32;
	
}
if (snake_direction == "right"){
	
	x_go = 32;
	
}
}
else{
	if (add_timer == 0){
		if (keyboard_check(vk_shift)){	
			for (i = 0; timer != 0&&i < 4; ++i){
				--timer;
			}
		}
		else{
			--timer;
		}
	}
	else{
		if (keyboard_check(vk_shift)){
			if (lose = false){
			for (i = 0; add_timer != 0&&i < 4; ++i){
				x += x_go/12;
				y += y_go/12;
				--add_timer;
			}
			}
		}
		else{
			if (lose = false){
			x += x_go/12;
			y += y_go/12;
			--add_timer;
			}
		}
		timer = 15;
		if (add_timer == 0){
			for (i = lv; i > 0; --i){
				snake_body_x[i] = snake_body_x[i-1];
				snake_body_y[i] = snake_body_y[i-1];
			}
			snake_body_x[0] = snake_x_for_future;
			snake_body_y[0] = snake_y_for_future;
		}
			}
}
if (timer == 0){
if (room_width/2-(room_width/2 mod 32)-32*9 > x&&snake_direction == "left"){
	lose = true
}
if (room_width/2-(room_width/2 mod 32)+32*10 < x&&snake_direction == "right"){
	lose = true
}
if (room_height/2-(room_height/2 mod 32)-32*8 > y&&snake_direction == "up"){
	lose = true
}
if (room_height/2-(room_height/2 mod 32)+32*10 < y&&snake_direction == "down"){
	lose = true
}
			for (i = lv; i > 0; --i){
				if (snake_body_x[i] = x&&snake_body_y[i] = y){
					lose = true
				}
			}
}

if (keyboard_check(ord("R"))) {
	
x = room_width/2 + self.sprite_width/2
y = room_height/2 + self.sprite_height/2
image_angle = 0;

x = x - x mod 32
y = y - y mod 32

timer = 60;
add_timer = 0;
x_go = 0;
y_go = 0;
 snake_direction = "up"
 
 lv = 0;
 for (i = 0; i < 1000; ++i){
 snake_body_x[i] = x;
 snake_body_y[i] = y;
 }
	lose = false
	snake_x_for_future = x;
	snake_y_for_future = y;
	
	draw_set_font(font0)
}