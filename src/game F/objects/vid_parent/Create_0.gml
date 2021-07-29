v = -1; is_playing = false;
if (file_exists(fname)) {
  v = video_add(fname);
  video_play(v);
  w = video_get_width(v);
  h = video_get_height(v);

  chan = buffer_sizeof(buffer_u64);
  buff = buffer_create(chan * w * h, buffer_fixed, chan);
  surf = -1; //create surface in Draw Event

  buffer_poke(buff, buffer_get_size(buff) - 1, buffer_u8, 0);
}

window_set_size(window_get_width(), window_get_height());


fox = false;
delta_alarm = irandom_range(1, 5) * 1000000; //1-5 seconds
inputChange = false;