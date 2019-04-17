/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C2560B2
/// @DnDArgument : "code" "draw_sprite_ext(snake_spr,0,x,y,image_xscale,image_yscale,$(13_10)image_angle, c_white, 255);$(13_10)depth = 10;$(13_10)if (lv > 0){$(13_10)	draw_sprite_ext(snake_body_spr,0,snake_body_x[0],snake_body_y[0],image_xscale,image_yscale,	$(13_10)		image_angle, c_white, 255)$(13_10)}$(13_10)for (i = 0; i < lv; ++i){$(13_10)	x_plus = 0;$(13_10)	y_plus = 0;	$(13_10)	if (i > 0){$(13_10)		if (sqrt((snake_body_x[i-1]-snake_body_x[i])*(snake_body_x[i-1]-snake_body_x[i]) + (snake_body_y[i-1]-snake_body_y[i])*(snake_body_y[i-1]-snake_body_y[i])) < 100){$(13_10)			$(13_10)			if (snake_body_x[i-1] > snake_body_x[i]){$(13_10)				x_plus = 32;$(13_10)			}$(13_10)			if (snake_body_x[i-1] < snake_body_x[i]){$(13_10)				x_plus = -32;$(13_10)			}$(13_10)			if (snake_body_y[i-1] > snake_body_y[i]){$(13_10)				y_plus = 32;$(13_10)			}$(13_10)			if (snake_body_y[i-1] < snake_body_y[i]){$(13_10)				y_plus = -32;$(13_10)			}$(13_10)		}$(13_10)		else{$(13_10)			if (snake_body_x[i-1] > snake_body_x[i]){$(13_10)				x_plus = -32;$(13_10)			}$(13_10)			if (snake_body_x[i-1] < snake_body_x[i]){$(13_10)				x_plus = 32;$(13_10)			}$(13_10)			if (snake_body_y[i-1] > snake_body_y[i]){$(13_10)				y_plus = -32;$(13_10)			}$(13_10)			if (snake_body_y[i-1] < snake_body_y[i]){$(13_10)				y_plus = 32;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	else{$(13_10)		if (sqrt((snake_x_for_future-snake_body_x[i])*(snake_x_for_future-snake_body_x[i]) + (snake_y_for_future-snake_body_y[i])*(snake_y_for_future-snake_body_y[i])) < 100){$(13_10)			$(13_10)			if (snake_x_for_future > snake_body_x[i]){$(13_10)				x_plus = 32;$(13_10)			}$(13_10)			if (snake_x_for_future < snake_body_x[i]){$(13_10)				x_plus = -32;$(13_10)			}$(13_10)			if (snake_y_for_future > snake_body_y[i]){$(13_10)				y_plus = 32;$(13_10)			}$(13_10)			if (snake_y_for_future < snake_body_y[i]){$(13_10)				y_plus = -32;$(13_10)			}$(13_10)		}$(13_10)		else{$(13_10)			if (snake_x_for_future > snake_body_x[i]){$(13_10)				x_plus = -32;$(13_10)			}$(13_10)			if (snake_x_for_future < snake_body_x[i]){$(13_10)				x_plus = 32;$(13_10)			}$(13_10)			if (snake_y_for_future > snake_body_y[i]){$(13_10)				y_plus = -32;$(13_10)			}$(13_10)			if (snake_y_for_future < snake_body_y[i]){$(13_10)				y_plus = 32;$(13_10)			}$(13_10)			$(13_10)		}$(13_10)	}$(13_10)	if (i != lv-1){$(13_10)		draw_sprite_ext(snake_body_spr,0,snake_body_x[i],snake_body_y[i],image_xscale,image_yscale,$(13_10)		image_angle, c_white, 255)$(13_10)		draw_sprite_ext(snake_body_spr,0,snake_body_x[i] + x_plus,snake_body_y[i] + y_plus,image_xscale,image_yscale,$(13_10)		image_angle, c_white, 255)$(13_10)	}$(13_10)	else{$(13_10)		draw_sprite_ext(snake_body_spr,0,snake_x_for_future,snake_y_for_future,image_xscale,image_yscale,$(13_10)		image_angle, c_white, 255)$(13_10)	}$(13_10)	if (add_timer != 0){$(13_10)		draw_sprite_ext(snake_body_spr,0,snake_body_x[i] + x_plus*(1-add_timer/12),snake_body_y[i] + y_plus*(1-add_timer/12),image_xscale,image_yscale,$(13_10)		image_angle, c_white, 255)$(13_10)	}$(13_10)	else{$(13_10)		draw_sprite_ext(snake_body_spr,0,snake_body_x[i],snake_body_y[i],image_xscale,image_yscale,$(13_10)		image_angle, c_white, 255)$(13_10)	}$(13_10)}$(13_10)	draw_text_color(100,100,"apple: " + string(lv), c_black,c_black,c_black,c_black,255);$(13_10)	if (0 != lv){$(13_10)		draw_sprite_ext(snake_body_spr,0,snake_x_for_future,snake_y_for_future,image_xscale,image_yscale,$(13_10)		image_angle, c_white, 255)$(13_10)	}$(13_10)	if (lose == true){$(13_10)		draw_text_color(room_width/2-string_width("Ты проиграл, нажми 'R', чтобы начать сначала")/2, 24, "Ты проиграл, нажми 'R', чтобы начать сначала", c_black,c_black,c_black,c_black,255);$(13_10)	}"
draw_sprite_ext(snake_spr,0,x,y,image_xscale,image_yscale,
image_angle, c_white, 255);
depth = 10;
if (lv > 0){
	draw_sprite_ext(snake_body_spr,0,snake_body_x[0],snake_body_y[0],image_xscale,image_yscale,	
		image_angle, c_white, 255)
}
for (i = 0; i < lv; ++i){
	x_plus = 0;
	y_plus = 0;	
	if (i > 0){
		if (sqrt((snake_body_x[i-1]-snake_body_x[i])*(snake_body_x[i-1]-snake_body_x[i]) + (snake_body_y[i-1]-snake_body_y[i])*(snake_body_y[i-1]-snake_body_y[i])) < 100){
			
			if (snake_body_x[i-1] > snake_body_x[i]){
				x_plus = 32;
			}
			if (snake_body_x[i-1] < snake_body_x[i]){
				x_plus = -32;
			}
			if (snake_body_y[i-1] > snake_body_y[i]){
				y_plus = 32;
			}
			if (snake_body_y[i-1] < snake_body_y[i]){
				y_plus = -32;
			}
		}
		else{
			if (snake_body_x[i-1] > snake_body_x[i]){
				x_plus = -32;
			}
			if (snake_body_x[i-1] < snake_body_x[i]){
				x_plus = 32;
			}
			if (snake_body_y[i-1] > snake_body_y[i]){
				y_plus = -32;
			}
			if (snake_body_y[i-1] < snake_body_y[i]){
				y_plus = 32;
			}
		}
	}
	else{
		if (sqrt((snake_x_for_future-snake_body_x[i])*(snake_x_for_future-snake_body_x[i]) + (snake_y_for_future-snake_body_y[i])*(snake_y_for_future-snake_body_y[i])) < 100){
			
			if (snake_x_for_future > snake_body_x[i]){
				x_plus = 32;
			}
			if (snake_x_for_future < snake_body_x[i]){
				x_plus = -32;
			}
			if (snake_y_for_future > snake_body_y[i]){
				y_plus = 32;
			}
			if (snake_y_for_future < snake_body_y[i]){
				y_plus = -32;
			}
		}
		else{
			if (snake_x_for_future > snake_body_x[i]){
				x_plus = -32;
			}
			if (snake_x_for_future < snake_body_x[i]){
				x_plus = 32;
			}
			if (snake_y_for_future > snake_body_y[i]){
				y_plus = -32;
			}
			if (snake_y_for_future < snake_body_y[i]){
				y_plus = 32;
			}
			
		}
	}
	if (i != lv-1){
		draw_sprite_ext(snake_body_spr,0,snake_body_x[i],snake_body_y[i],image_xscale,image_yscale,
		image_angle, c_white, 255)
		draw_sprite_ext(snake_body_spr,0,snake_body_x[i] + x_plus,snake_body_y[i] + y_plus,image_xscale,image_yscale,
		image_angle, c_white, 255)
	}
	else{
		draw_sprite_ext(snake_body_spr,0,snake_x_for_future,snake_y_for_future,image_xscale,image_yscale,
		image_angle, c_white, 255)
	}
	if (add_timer != 0){
		draw_sprite_ext(snake_body_spr,0,snake_body_x[i] + x_plus*(1-add_timer/12),snake_body_y[i] + y_plus*(1-add_timer/12),image_xscale,image_yscale,
		image_angle, c_white, 255)
	}
	else{
		draw_sprite_ext(snake_body_spr,0,snake_body_x[i],snake_body_y[i],image_xscale,image_yscale,
		image_angle, c_white, 255)
	}
}
	draw_text_color(100,100,"apple: " + string(lv), c_black,c_black,c_black,c_black,255);
	if (0 != lv){
		draw_sprite_ext(snake_body_spr,0,snake_x_for_future,snake_y_for_future,image_xscale,image_yscale,
		image_angle, c_white, 255)
	}
	if (lose == true){
		draw_text_color(room_width/2-string_width("Ты проиграл, нажми 'R', чтобы начать сначала")/2, 24, "Ты проиграл, нажми 'R', чтобы начать сначала", c_black,c_black,c_black,c_black,255);
	}