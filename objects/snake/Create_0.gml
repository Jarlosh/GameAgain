/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F787DAB
/// @DnDArgument : "code" "$(13_10)x = room_width/2 + self.sprite_width/2$(13_10)y = room_height/2 + self.sprite_height/2$(13_10)$(13_10)x = x - x mod 32$(13_10)y = y - y mod 32$(13_10)$(13_10)timer = 60;$(13_10)add_timer = 0;$(13_10)x_go = 0;$(13_10)y_go = 0;$(13_10) snake_direction = "up"$(13_10) $(13_10) lv = 0;$(13_10) for (i = 0; i < 1000; ++i){$(13_10) snake_body_x[i] = x;$(13_10) snake_body_y[i] = y;$(13_10) }$(13_10)	lose = false$(13_10)	snake_x_for_future = x;$(13_10)	snake_y_for_future = y;$(13_10)	$(13_10)	draw_set_font(font0)"

x = room_width/2 + self.sprite_width/2
y = room_height/2 + self.sprite_height/2

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