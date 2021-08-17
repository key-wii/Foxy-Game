/// @description  Apply shader to entire application.
var is_compiled = shader_is_compiled(crtshutdown_shader);

if (is_compiled && active)
{
    var progress_param = shader_get_uniform(crtshutdown_shader, "progress");
 
    shader_set(crtshutdown_shader);
    
    var f = ticks / duration_ticks;
    shader_set_uniform_f(progress_param, min(1.0, f));
    
    /*if (f >= 1.0)
    {
        active = false;
        ticks = 0;
    }*/
}

draw_surface(application_surface, 0, 0);

if (is_compiled)
    shader_reset();