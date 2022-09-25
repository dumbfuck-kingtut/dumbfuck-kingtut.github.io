count += delta_time/1000000;
log(count);
tc++;

if count > 2.19 && image_index < 1 image_index++;
if count > 5.12 && image_index < 2 image_index++;
if count > 8.12 && image_index < 3 image_index++;
if count > 10.75 && image_index < 4 image_index++;
if count > 11.30 && image_index < 5 image_index++;
if count > 14.26 && image_index < 6 image_index++;
if count > 17.22 && image_index < 7 image_index++;
if count > 20.22 && image_index < 8 image_index++;
if count > 23.19 && image_index < 9 image_index++;
if count > 27.26 && image_index < 10 image_index++;
/*if count > 30 && !(tc%6) {
	audio_sound_set_track_position(beats, random(18)+10);
}*/
if count > 30 room_goto(Room18);