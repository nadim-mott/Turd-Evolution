// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function instance_nth_nearest(pointx,pointy,object,n){
    n = min(max(1,n),instance_number(object));
    var list = ds_priority_create();
    var nearest = noone;
    with (object) ds_priority_add(list,id,distance_to_point(pointx,pointy));
    repeat (n) nearest = ds_priority_delete_min(list);
    ds_priority_destroy(list);
    return nearest;
}

function draw_text_colour_outline(_x, _y, _string, _textColor1, _textColor2, _textAlpha, _outlineColor1, _outlineColor2, _outlineAlpha, _outlineThickness, _outlineQuality, _xscale, _yscale, _angle){
	var i;
	for (i = 0; i < 360; i += 360 / argument10){
		draw_text_transformed_color(argument0 + lengthdir_x(argument9, i), argument1 + lengthdir_y(argument9, i), string(argument2), argument11, argument12, argument13, argument6, argument6, argument7, argument7, argument8);
	}
draw_text_transformed_color(argument0, argument1, string(argument2), argument11, argument12, argument13, argument3, argument3, argument4, argument4, argument5);
}

function drawRectangleWidth(x1,y1,x2,y2,color,width){
	draw_set_color(color)

	draw_rectangle(x1,y1,x2,y2,true)

	var i = 0

	do
	{

	    i += 1

	    draw_rectangle(x1-i,y1-i,x2+i,y2+i,true)

	}
	until(i = width)	
}

function scientific_notation(val) {
	var str_val = string(val)
	if (val < 999) {
		return val
	} else {
		return string_char_at(str_val,1)+"."+string_copy(str_val,2,2)+"E"+string(string_length(str_val)-1)
	}
}