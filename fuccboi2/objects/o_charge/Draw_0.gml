switch type {
	case 0:
		color = make_color_rgb(255, 255-count*2.5, 255-count*2.5);
		break;
	case 1:
		color = make_color_rgb(255, 255-count*2.5, 255);
		break;
	case 2:
		color = make_color_rgb(255-count*2.5, 255, 255-count*2.5);
		break;
	case 3:
		color = make_color_rgb(255-count*2.5, 255-count*2.5, 255);
		break;
	case 4:
		SNART.dontmove = true;
		color = make_color_rgb(count*8, count*8, count*8);
		break;
}
//__bktgtlich_pass_uniforms_from_ui()
surface_set_target(global.gameplay);
x = SNART.x;
y = SNART.y;
count += 2;
draw_set_color(color);
draw_circle_width(x, y, delay-count, 4, true);
draw_set_color(c_white);
if count >= delay {
	
	switch type {
		case 0:
			guy = audio_play_sound(se_snart, 0, false);
			audio_sound_pitch(guy, random(1)+.5);
			instance_create(x, y, o_bullet1);
			break;
		case 1:
			guy = audio_play_sound(se_snart, 0, false);
			audio_sound_pitch(guy, random(1)+.5);
			instance_create(x, y, o_bulletwo);
			break;
		case 2:
			guy = audio_play_sound(se_snart, 0, false);
			audio_sound_pitch(guy, random(1)+.5);
			instance_create(x, 300, o_bounce);
			break;
		case 3:
			guy = audio_play_sound(se_demonizer, 0, false);
			audio_sound_pitch(guy, random(1)+.5);
			instance_create(x, y, o_flash);
			o_mordecai.vspd = 2;
			break;
		case 4:
			guy = audio_play_sound(se_laser, 0, false);
			audio_sound_pitch(guy, random(1)+.5);
			instance_create(x, y, o_laser);
			break;
	}
	instance_destroy();
}
surface_reset_target();