///draw_label(x, y, string, bottomCol, topCol)
xx = argument0;
yy = argument1;
txt = argument2;
colBottom = argument3;
colTop = argument4;

draw_set_colour(colBottom);
draw_text(xx, yy, txt);
    
draw_set_colour(colTop);
draw_text(xx, yy - 2, txt);