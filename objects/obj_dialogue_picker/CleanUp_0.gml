var i = 0, arr_length = array_length(picker_text);
repeat(arr_length)
{
	ds_grid_destroy(picker_text[i]);
	i++
}
