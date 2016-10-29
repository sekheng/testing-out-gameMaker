//game_restart();
var randomAngle = random(360);
var o;
o = instance_create(x,y, obj_dead_player);
o.angle = randomAngle;
o = instance_create(x,y,obj_dead_player);
o.angle = 120 + randomAngle;
o = instance_create(x,y,obj_dead_player);
o.angle = 240 + randomAngle;

with (obj_dead_player)
{
    direction = angle;
    image_angle = angle;
    speed = random_range(3, 5);
}

audio_play_sound(snd_explode,10,0);
with (other)
{
    instance_destroy();
}

instance_create(0,0,obj_game_over);
