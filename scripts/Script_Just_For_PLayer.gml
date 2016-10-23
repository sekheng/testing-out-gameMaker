if (keyboard_check(vk_left))
image_angle += 2;

if (keyboard_check(vk_right))
image_angle -= 2;

if (keyboard_check(vk_up))
motion_add(image_angle, 0.2);

if (speed > 5) speed = 5;
else speed = max(speed - 0.01, 0);

if (keyboard_check_pressed(vk_space))
{
    var bullet = instance_create(x,y,spr_buller);
    bullet.direction = image_angle;
    bullet.image_angle = image_angle;
    bullet.speed = 15;
}
