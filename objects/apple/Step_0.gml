/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3EDB1A41
/// @DnDArgument : "code" "$(13_10)if (distance_to_object(snake) <= 0){$(13_10)instance_destroy()$(13_10)snake.lv += 1;$(13_10)}"

if (distance_to_object(snake) <= 0){
instance_destroy()
snake.lv += 1;
}