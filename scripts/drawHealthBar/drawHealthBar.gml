/// drawCircleBar(x,y,radius,maxsegments,segments,startangle,totalangle,direction,colour)
/// @arg x 0
/// @arg y 1
/// @arg width 2
/// @arg height 3
/// @arg max 4
/// @arg current 5
/// @arg colour 6

//draw_rectangle_color(argument0,argument1,argument0+argument2+1,argument1+argument3+1,argument6, argument6, argument6, argument6, true);
var barWidth = argument2 * (argument5 / argument4);
draw_rectangle_color(argument0+1,argument1+1,argument0 + barWidth,argument1+argument3,argument6, argument6, argument6, argument6, false);