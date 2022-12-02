ds_list_destroy(global.follow_x);
ds_list_destroy(global.follow_y);
ds_list_destroy(global.follow_dir);
global.follow_x = ds_list_create()
global.follow_y = ds_list_create()
global.follow_dir = ds_list_create()
