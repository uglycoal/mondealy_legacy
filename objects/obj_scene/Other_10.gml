scene_running = scene_info[scene]
var len = array_length(scene_running) - 1;
scene_running_array = -1;
scene_running_array = array_create(len, 0);
array_copy(scene_running_array, 0, scene_running, 1, len);
