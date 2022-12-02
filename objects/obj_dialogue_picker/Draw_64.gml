var gwidth = global.view_width, gheight = global.view_height; //положение на экране, 1 - x координата, 2 - y
var ds_grid = picker_text[picker_index], ds_height = ds_grid_height(ds_grid);		
var y_buffer = 32, x_buffer = 180; //расстояние между текстом и экраном
var start_y = gheight - 20, start_x = 30;
		
var lefttext_x, lefttext_y = start_y, textscale, yoffset;
var xx = 0; repeat(ds_height)
{
	lefttext_x = start_x + (xx * x_buffer);
	var col = c_white;
	textscale = 0.5;
	yoffset = 0;
	if(xx == picker_option[page])
	{
		col = c_yellow;
		yoffset = 4;
	}
	draw_text_transformed_color(lefttext_x, lefttext_y, ds_grid[# 0, xx], textscale, textscale, 0, col, col, col, col, 1); //нарисовать текст с цветом
	xx++; //добавить следующую строчку
}