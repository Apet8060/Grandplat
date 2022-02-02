//code that runs every frame

//keyboard check and inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);

//Horitontal movement
xDirection = right - left;
xVector = xSpeed * xDirection;

//check to see if there is a wall, if there is stop moving, if not, continue

if (place_meeting(x + xVector, y, oWall))
	{
		//check one pixel to left or right until we collide with oWall
		// ! means "not
		while(!place_meeting(x + xVector, y, oWall))
			{
			//only move 1 pixel at a time until you hit a Owall
			x = x + xDirection;
			}
			xVector = 0;
	}
//otherwise move normal
x = x + xVector;

//Vertical movement
yVector = yVector + grv;

if (place_meeting(x, y + yVector, oWall))
	{
		//check one pixel to up or down until we collide with oWall
		// ! means "not
		//"sign" is going to return + or - sign for a value (-1, +1)
		//sign(yVector) if yVector is positive it will return a +1, if negative, it will return a -1
		while(!place_meeting(x, y + sign(yVector), oWall))
			{
			//only move 1 pixel at a time until you hit a Owall
			y = y + sign(yVector);
			}
			yVector = 0;
	}
//otherwise move normal
y = y + yVector;

//if we are touching oWall and we press jump, jump
if (place_meeting(x, y + 1, oWall) and (jump))
{
		yVector = jumpForce;
}

