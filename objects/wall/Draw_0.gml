/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D2880A0
/// @DnDArgument : "code" "depth=-99; $(13_10)iy = 0;$(13_10)for (ix = 0; ix < 22; ++ix){$(13_10)	draw_sprite_ext(none,0,(room_width/2-(room_width/2 mod 32))-32*10 + $(13_10)	ix*32,room_height/2-(room_height/2 mod 32)-32*10 ,1,1,0,c_white,255)$(13_10)}$(13_10)$(13_10)iy = 0;$(13_10)for (ix = 0; ix < 22; ++ix){$(13_10)	draw_sprite_ext(none,0,(room_width/2-(room_width/2 mod 32))-32*10 + $(13_10)	ix*32,room_height/2-(room_height/2 mod 32)-32*10+ 21*32 ,1,1,0,c_white,255)$(13_10)}$(13_10)$(13_10)ix = 0;$(13_10)for (iy = 0; iy < 22; ++iy){$(13_10)	draw_sprite_ext(none,0,(room_width/2-(room_width/2 mod 32))-32*10$(13_10)	,room_height/2-(room_height/2 mod 32)-32*10 + iy*32 ,1,1,0,c_white,255)$(13_10)}$(13_10)ix = 0;$(13_10)for (iy = 0; iy < 22; ++iy){$(13_10)	draw_sprite_ext(none,0,(room_width/2-(room_width/2 mod 32))-32*10 + 21*32$(13_10)	,room_height/2-(room_height/2 mod 32)-32*10 + iy*32 ,1,1,0,c_white,255)$(13_10)}$(13_10)$(13_10)$(13_10)"
depth=-99; 
iy = 0;
for (ix = 0; ix < 22; ++ix){
	draw_sprite_ext(none,0,(room_width/2-(room_width/2 mod 32))-32*10 + 
	ix*32,room_height/2-(room_height/2 mod 32)-32*10 ,1,1,0,c_white,255)
}

iy = 0;
for (ix = 0; ix < 22; ++ix){
	draw_sprite_ext(none,0,(room_width/2-(room_width/2 mod 32))-32*10 + 
	ix*32,room_height/2-(room_height/2 mod 32)-32*10+ 21*32 ,1,1,0,c_white,255)
}

ix = 0;
for (iy = 0; iy < 22; ++iy){
	draw_sprite_ext(none,0,(room_width/2-(room_width/2 mod 32))-32*10
	,room_height/2-(room_height/2 mod 32)-32*10 + iy*32 ,1,1,0,c_white,255)
}
ix = 0;
for (iy = 0; iy < 22; ++iy){
	draw_sprite_ext(none,0,(room_width/2-(room_width/2 mod 32))-32*10 + 21*32
	,room_height/2-(room_height/2 mod 32)-32*10 + iy*32 ,1,1,0,c_white,255)
}