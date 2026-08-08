if (laser_alpha > 0.01) {
    draw_set_color(c_red);
    draw_set_alpha(laser_alpha);
    var laser_half = laser_width_effective * 0.1;
    draw_rectangle(320 /2- laser_half, 0, 320 /2+ laser_half, 320, false);
    draw_set_alpha(1);
}
if (soul_alpha > 0.01) {
    draw_set_alpha(soul_alpha); 
    var float_offset = sin(current_time * 0.005) * 1; 
    draw_sprite(spr_ui_soul_blur, 0, 320 / 2, 240 / 2 + float_offset);
    draw_set_alpha(1);
}