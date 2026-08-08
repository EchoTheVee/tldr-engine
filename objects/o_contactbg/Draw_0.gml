if (siner > 2)
{
    draw_sprite_ext(spr_depth, 0, 160, 120, 1 + xstretch, 1 + ystretch, 0, image_blend, ((0.2 + alpha) - o_insurance) + b_insurance);
    draw_sprite_ext(spr_depth, 0, 160, 120, -1 - xstretch, 1 + ystretch, 0, image_blend, ((0.2 + alpha) - o_insurance) + b_insurance);
    draw_sprite_ext(spr_depth, 0, 160, 120, -1 - xstretch, -1 - ystretch, 0, image_blend, ((0.2 + alpha) - o_insurance) + b_insurance);
    draw_sprite_ext(spr_depth, 0, 160, 120, 1 + xstretch, -1 - ystretch, 0, image_blend, ((0.2 + alpha) - o_insurance) + b_insurance);
}