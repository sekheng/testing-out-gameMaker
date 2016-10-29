if (keyboard_check(vk_left) || keyboard_check(ord("A")))
image_angle += 2;

if (keyboard_check(vk_right) || keyboard_check(ord("D")))
image_angle -= 2;

if (keyboard_check(vk_up) || keyboard_check(ord("W")))
motion_add(image_angle, 0.2);

if (speed > 5) speed = 5;
else speed = max(speed - 0.01, 0);

if (keyboard_check_pressed(vk_space))
{
    var bullet = instance_create(x,y,spr_buller);
    bullet.direction = image_angle;
    bullet.image_angle = image_angle;
    bullet.speed = 15;
    audio_play_sound(snd_shoot, 0, 0);
}

