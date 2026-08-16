event_inherited()

cutscene_create();

var bullet_count = 12;
var target_x = o_enc_box.x;
var target_y = o_enc_box.y;
var bullet_dist = 80;

for (var i = 0; i < bullet_count; i ++) {
    var dir = i/bullet_count * 360;
    cutscene_instance_create(o_enc_bullet, target_x + lengthdir_x(bullet_dist, dir), target_y + lengthdir_y(bullet_dist, dir));
    cutscene_sleep(2);
}

cutscene_play()

__support_destroy_check()