//if (global.unpausing) exit;

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