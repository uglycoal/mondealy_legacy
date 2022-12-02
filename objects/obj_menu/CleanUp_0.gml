var i = 0, arr_length = array_length(menu_pages);
repeat(arr_length)
{
	ds_grid_destroy(menu_pages[i]);
	i++
}