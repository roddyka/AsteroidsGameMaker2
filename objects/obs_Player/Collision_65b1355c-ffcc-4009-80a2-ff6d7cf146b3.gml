/// @description Insert description here
// You can write your code in this editor
lives -= 1;
instance_destroy();

with(obs_game){
	alarm[1] = room_speed;
}
audio_play_sound(snd_die,1,false);

repeat(10){
	instance_create_layer(x,y,"Instances", obs_debris);
}