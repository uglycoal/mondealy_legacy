function change_language(argument0) {
	show_debug_message("language changed")
	switch(argument0)
	{
		case 0:
		if (global.selectedlanguage != "lang\\en.csv")
		{
			global.selectedlanguage = "lang\\en.csv";		
			ds_map_destroy(global.dialoguemap);
			global.dialoguemap = ds_map_create()
			var grid = load_csv(global.selectedlanguage)
			var height = ds_grid_height(grid) - 1;

		    var i = 1; repeat(height)
			{
		        var str = grid[# 1, i];
		        ds_map_add(global.dialoguemap, real(grid[# 0, i]), str);
		        i++
		    }
			global.language = 0;
		}
		break;
	
		case 1: 
		if (global.selectedlanguage != "lang\\ru.csv")
		{
			global.selectedlanguage = "lang\\ru.csv";
			ds_map_destroy(global.dialoguemap);
			global.dialoguemap = ds_map_create()
			var grid = load_csv(global.selectedlanguage)
			var height = ds_grid_height(grid) - 1;

		    var i = 1; repeat(height)
			{
		        var str = grid[# 1, i];
		        ds_map_add(global.dialoguemap, real(grid[# 0, i]), str);
		        i++
		    }
			global.language = 1;
		}
		break;
	}
	save_globals();


}
