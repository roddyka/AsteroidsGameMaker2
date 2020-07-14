/// @description Insert description here
// You can write your code in this editor
score += 10;
audio_play_sound(snd_die,1,false);
instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == spr_enemy_huge){
		repeat(2){
			var new_enemy = instance_create_layer(x,y,"Instances", obs_Enemy);
			new_enemy.sprite_index = spr_enemy_medium
		}
	}else if(sprite_index == spr_enemy_medium){
		repeat(2){
			var new_enemy = instance_create_layer(x,y,"Instances", obs_Enemy);
			new_enemy.sprite_index = spr_enemy_small
		}
	}
	
	instance_create_layer(x,y,"Instances", obs_debris);
}