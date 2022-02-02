//code that runs when player is creaated
//how many players we want the player to move
xSpeed = 4;

//what direction the player is facing (where 1 + right, -1= left, 0 =front
xDirection = 0;

//how fast and waht direction player is moving
xVector = xSpeed * xDirection;

yVector = 0;

//gravity levels
grv = 0.4;

jumpForce = -13;

//coins and points
global.coins = 0;
global.points = 0;