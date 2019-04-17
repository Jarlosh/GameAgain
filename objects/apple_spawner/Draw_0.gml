/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1F651467
/// @DnDArgument : "code" "$(13_10)depth=99; $(13_10)for (ix = 0; ix < 20; ++ix){$(13_10)	for (iy = 0; iy < 20; ++iy){$(13_10)		draw_sprite_ext(net,0,(room_width/2-(room_width/2 mod 32))-32*9 + $(13_10)		ix*32,room_height/2-(room_height/2 mod 32)-32*9 + iy*32 ,1,1,0,c_white,255)$(13_10)	}$(13_10)}"

depth=99; 
for (ix = 0; ix < 20; ++ix){
	for (iy = 0; iy < 20; ++iy){
		draw_sprite_ext(net,0,(room_width/2-(room_width/2 mod 32))-32*9 + 
		ix*32,room_height/2-(room_height/2 mod 32)-32*9 + iy*32 ,1,1,0,c_white,255)
	}
}