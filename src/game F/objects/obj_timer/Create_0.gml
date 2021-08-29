maxTimer = 100;
timer = 100;
timer_prev = timer;
global.seconds = 0;
drop = false;
foxes = 0;
gameover = false;

global.gameover = false;

//Prefetch screen sprites
/*draw_texture_flush();

sprite_prefetch(spr_screen_col0);
sprite_prefetch(spr_screen_col1);
sprite_prefetch(spr_screen_col2);
sprite_prefetch(spr_screen_col3);
sprite_prefetch(spr_screen_col4);
sprite_prefetch(spr_screen_col5);
sprite_prefetch(spr_screen_col6);

sprite_prefetch(spr_screen_bw0);
sprite_prefetch(spr_screen_bw1);
sprite_prefetch(spr_screen_bw2);
sprite_prefetch(spr_screen_bw3);
sprite_prefetch(spr_screen_bw4);

sprite_prefetch(spr_screen_cpu0);
sprite_prefetch(spr_screen_cpu1);
sprite_prefetch(spr_screen_cpu2);