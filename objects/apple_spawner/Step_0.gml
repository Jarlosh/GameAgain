/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 34356B16
/// @DnDArgument : "code" "if (instance_number(apple) == 0){$(13_10)apple_x = (room_width/2-(room_width/2 mod 32))-32*9 + random(640);$(13_10)apple_y = (room_height/2-(room_height/2 mod 32))-32*9 + random(640);$(13_10)apple_x = apple_x - apple_x mod 32;$(13_10)apple_y = apple_y - apple_y mod 32;$(13_10)instance_create_depth(apple_x,apple_y,0,apple)$(13_10)}"
if (instance_number(apple) == 0){
apple_x = (room_width/2-(room_width/2 mod 32))-32*9 + random(640);
apple_y = (room_height/2-(room_height/2 mod 32))-32*9 + random(640);
apple_x = apple_x - apple_x mod 32;
apple_y = apple_y - apple_y mod 32;
instance_create_depth(apple_x,apple_y,0,apple)
}