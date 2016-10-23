if (!keyboard_check_released(vk_left))
image_angle += 2;
if (keyboard_check_released(vk_right))
image_angle -= 2;
if (keyboard_check_released(vk_up))
motion_add(image_angle, 0.2);
if (speed > 5) speed = 5;
