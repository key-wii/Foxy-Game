if (instance_number(obj_camera) > 1) with (instance_nearest(x, y, obj_camera)) if (id > other.id) instance_destroy();

global.nextRoom = false;

//Camera
normal = true;

base_width = room_width;
base_height = room_height;
cameraWidth = base_width;
cameraHeight = base_height;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size (view_camera[0], cameraWidth, cameraHeight);

//Display
displayScale = cameraWidth / base_width;
displayWidth = cameraWidth * displayScale;
displayHeight = cameraHeight * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, cameraWidth, cameraHeight);

//GUI
display_set_gui_size(cameraWidth, cameraHeight);

alarm_set(0, 1);


shakeSudden = 0;
shakeSteady = 0;
shakeMax = 0;

plusShake = 0;

noVer = false;
noHor = false;