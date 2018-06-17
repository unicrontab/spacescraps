/// drawCircleBar(x,y,radius,maxsegments,segments,startangle,totalangle,direction,colour)
/// @arg x 0
/// @arg y 1
/// @arg radius 2
/// @arg maxsegments 3
/// @arg segments 4
/// @arg startangle 5
/// @arg totalangle 6
/// @arg direction 7
/// @arg colour 8

anglechange = (argument6/argument3)*(pi/180);
i = argument5*(pi/180);

ax = argument0+(cos(i)*argument2);
ay = argument1-(sin(i)*argument2);

repeat(argument4) {
    i += argument7 * anglechange
    
    bx = argument0+(cos(i)*argument2);
    by = argument1-(sin(i)*argument2);
    
    draw_triangle_colour(ax,ay,bx,by,argument0,argument1,argument8,argument8,argument8,0);
    
    ax = bx;
    ay = by;
}