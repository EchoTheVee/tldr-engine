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
if realtimer=20{
    instance_create(o_text_typer, 320-110, 240-60, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}ARE YOU{sleep(30)}{br}{resetx}THERE?{stop}",
        gui: true,
    })
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
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}WE MAY{br}{resetx}BEGIN.{stop}",
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
if realtimer=1860{
    fader_fade(0, 1, 80)
}
if realtimer=1920{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}OR MAYBE...{stop}",
        gui: true,
    })
}
if realtimer=2000{
    fader_fade(0, 1, 80)
}
if realtimer=2080{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}YOU ARE{br}{resetx}SEARCHING{br}{resetx}FOR SOMETHING{br}{resetx}NEW{stop}",
        gui: true,
    })
}
if realtimer=2240{
    fader_fade(0, 1, 80)
}
if realtimer=2320{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}LIKE ALWAYS.{stop}",
        gui: true,
    })
}
if realtimer=2400{
    fader_fade(0, 1, 80)
}
if realtimer=2480{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}YOU KNOW{br}{resetx}THAT...{stop}",
        gui: true,
    })
}
if realtimer=2560{
    fader_fade(0, 1, 80)
}
if realtimer=2640{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}THIS{br}{resetx}EXPERIMENT{br}{resetx}HAS RUN{br}{resetx}DRY.{stop}",
        gui: true,
    })
}
if realtimer=2800{
    fader_fade(0, 1, 80)
}
if realtimer=2880{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}THERE IS{br}{resetx}NOTHING MORE{br}{resetx}TO FIND.{stop}",
        gui: true,
    })
}
if realtimer=3040{
    fader_fade(0, 1, 80)
}
if realtimer=3120{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}AND YET{br}{resetx}YOU PERSIST.{stop}",
        gui: true,
    })
}
if realtimer=3200{
    fader_fade(0, 1, 80)
}
if realtimer=3280{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}HOW{br}{resetx}INTERESTING.{stop}",
        gui: true,
    })
}
if realtimer=3360{
    fader_fade(0, 1, 80)
}
if realtimer=3440{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}PERHAPS...{stop}",
        gui: true,
    })
}
if realtimer=3520{
    fader_fade(0, 1, 80)
}
if realtimer=3600{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}A NEW{br}{resetx}EXPERIMENT{br}{resetx}IS IN{br}{resetx}ORDER.{stop}",
        gui: true,
    })
}
if realtimer=3760{
    fader_fade(0, 1, 80)
}
if realtimer=3820{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}RATHER, A{br}{resetx}NEW VARIABLE{br}{resetx}TO INTRODUCE.{stop}",
        gui: true,
    })
}
if realtimer=3980{
    fader_fade(0, 1, 80)
}
if realtimer=4060{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}SO MUCH{br}{resetx}CAN CHANGE{br}{resetx}WITH ONE{br}{resetx}SINGLE{br}{resetx}VARIABLE.{stop}",
        gui: true,
    })
}
if realtimer=4260{
    fader_fade(0, 1, 80)
}
if realtimer=4340{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}YOUR PATH{br}{resetx}SHALL STRAY{br}{resetx}BUT ALSO{br}{resetx}INTERTWINE.{stop}",
        gui: true,
    })
}
if realtimer=4500{
    fader_fade(0, 1, 80)
}
if realtimer=4580{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}ALTHOUGH{br}{resetx}IM SURE{br}{resetx}YOU WONT{br}{resetx}MIND...{stop}",
        gui: true,
    })
}
if realtimer=4740{
    fader_fade(0, 1, 80)
}
if realtimer=4820{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}GIVEN HOW{br}{resetx}MUCH YOU{br}{resetx}YEARN...{stop}",
        gui: true,
    })
}
if realtimer=4980{
    fader_fade(0, 1, 80)
}
if realtimer=5060{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}FOR SOMETHING{br}{resetx}NEW.{stop}",
        gui: true,
    })
}
if realtimer=5140{
    fader_fade(0, 1, 80)
}

if realtimer=5260{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}NOW...{stop}",
        gui: true,
    })
}
if realtimer=5320{
    fader_fade(0, 1, 80)
	OBMADE = 0
	music_stop_all()
}
if realtimer=5400{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}THIS{br}{resetx}EXPERIMENT...{stop}",
        gui: true,
    })
}
if realtimer=5480{
    fader_fade(0, 1, 80)
}
if realtimer=5560{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}WILL BE{br}{resetx}VERY...{stop}",
        gui: true,
    })
}
if realtimer=5640{
    fader_fade(0, 1, 80)
}
if realtimer=5720{
    instance_destroy(o_text_typer)
    instance_destroy(o_fader)
    instance_create(o_text_typer, 320-110, 240-190, -999, {
        text: "{preset(god_text)}{xspace(5.5)}{speed(6)}VERY{br}{resetx}INTERESTING...{stop}",
        gui: true,
    })
}
if realtimer=5800{
    fader_fade(0, 1, 80)
}
if realtimer =5880
{
	instance_destroy(o_text_typer)
    instance_destroy(o_fader)
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