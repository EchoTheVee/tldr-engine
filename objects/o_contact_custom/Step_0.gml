

if !musplayed && music_getplaying(0) != mus_drone {
	musplayed = true
	music_play(mus_drone, 0)
}
realtimer++
if (OBMADE == 1)
{
    obacktimer += OBM;
    
    if (obacktimer >= 20)
    {
        var DV = instance_create(o_contactbg);
        DV.OBSPEED = 0.01 * OBM;
        obacktimer = 0;
    }
}
//wait_timer = 20;

if wait_timer > 0
{
	wait_timer -= 1;
}
else
{
	instance_create(o_text_typer, 320-110, 240-60, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}ARE YOU{sleep(30)}{br}{resetx}THERE?{stop}",
        gui: true,
    })
	wait_timer = 80
}

if realtimer=180{
    fader_fade(0, 1, 80)
}
if realtimer=300{
    instance_destroy(o_fader)
    instance_destroy(o_text_typer)
    instance_create(o_text_typer, 320-110, 240-60, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)} ARE WE{sleep(30)}{br}{resetx}CONNECTED?{stop}",
        gui: true,
    })
}
if realtimer=380{
    fader_fade(0, 1, 80)
}
if (realtimer == 460) {
    instance_destroy(o_fader);
    instance_destroy(o_text_typer);
    laser_alpha_target = 1;
    soul_alpha = 0;
    laser_width_target = 640/6;
    audio_play(snd_appearance)
}

if (realtimer == 500) {
    laser_alpha_target = 0;
    soul_alpha = 1;
    laser_width_target = 0;
}
if realtimer=600{
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}EXCELLENT.{stop}",
        gui: true,
    })
}
if realtimer=680{
    fader_fade(0, 1, 80)
}
if realtimer=760{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}  TRULY{br}{resetx}EXCELLENT.{stop}",
        gui: true,
    })
}
if realtimer=820{
    fader_fade(0, 1, 80)
}
if realtimer=900{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}NOW.{stop}",
        gui: true,
    })
}
if realtimer=980{
    fader_fade(0, 1, 80)
}
if realtimer=1060{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}WE MAY{br}{resetx}BEGIN..?{stop}",
        gui: true,
    })
}
if realtimer=1140{
    fader_fade(0, 1, 80)
}
if realtimer=1200{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    laser_alpha_target = 1;
    laser_width_target = 640/6;
    audio_play(snd_appearance)
}
if realtimer=1240{
    laser_alpha_target = 0;
    soul_alpha = 0;
    laser_width_target = 0;
}
if realtimer=1300{
    music_play(mus_anotherhim,0,true,0)
    music_fade(0,1,30)
    OBMADE = 1
}

if realtimer=1400{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}HOW{br}{resetx}INTERESTING.{stop}",
        gui: true,
    })
}
if realtimer=1480{
    fader_fade(0, 1, 80)
}
if realtimer=1560{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}YOU ARE{br}{resetx}BACK AGAIN.{stop}",
        gui: true,
    })
}
if realtimer=1620{
    fader_fade(0, 1, 80)
}
if realtimer=1700{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}HERE TO{br}{resetx}REVISIT{br}{resetx}THE SAME{br}{resetx}STORY?{stop}",
        gui: true,
    })
}
if realtimer=1780{
    fader_fade(0, 1, 80)
}
if realtimer=1860{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}OR PERHAPS...{stop}",
        gui: true,
    })
}
if realtimer=1920{
    fader_fade(0, 1, 80)
}
if realtimer=2000{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}YOU ARE{br}{resetx}SEARCHING{br}{resetx}FOR SOMETHING{br}{resetx}NEW{stop}",
        gui: true,
    })
}
if realtimer=2080{
    fader_fade(0, 1, 80)
}
if realtimer=2160{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}LIKE ALWAYS.{stop}",
        gui: true,
    })
}
if realtimer=2220{
    fader_fade(0, 1, 80)
}
if realtimer=2300{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}YOU KNOW{br}{resetx}THAT...{stop}",
        gui: true,
    })
}
if realtimer=2380{
    fader_fade(0, 1, 80)
}


var speed_alpha = 0.05;
var speed_width = 5;
var speed_overlay = 0.03;
var speed_soul = 0.03;

if (laser_alpha < laser_alpha_target) laser_alpha += speed_alpha;
else if (laser_alpha > laser_alpha_target) laser_alpha -= speed_alpha;
if (laser_width < laser_width_target) laser_width += speed_width;
else if (laser_width > laser_width_target) laser_width -= speed_width;
if (laser_alpha > 0.03 && laser_width_target > 0) {
    laser_width_effective = clamp(laser_width, 150/6, 640/6);
} else {
    laser_width_effective = laser_width;
}