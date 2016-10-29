while (place_meeting(x,y, obj_player))
{
    x = random(room_width);
    y = random(room_height);
}

image_speed = 0;
image_index = irandom(2);

direction = random(360);
speed = 0.5 + random(2);
