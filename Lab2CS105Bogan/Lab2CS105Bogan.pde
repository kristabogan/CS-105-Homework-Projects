// Krista Bogan

// This code creates three shapes, a square, circle, and rectangle,
// and simulates gravity. Each shape changes a different color
// as you hover over it with a mouse. Clicking the mouse over
// each shape also allows you to drag and drop them.

// Variables work for the coordinates on the circle and rectangle
float xCircle = 100;
float yCircle = 100;
float xRect =100;
float yRect =0;

// Variables work for the 3 points on the triangle
float x1Triangle = 100;
float y1Triangle = 0;
float x2Triangle = 70;
float y2Triangle = 50;
float x3Triangle = 130;
float y3Triangle = 50;

// Variables indicate velocity & acceleration
float vxCircle = 14;
float vyCircle =5;
float vxTriangle = 16;
float vyTriangle =7;
float vxRect = 12;
float vyRect =4;
float yAcceleration = 1;

// This codes gravity
float damping = 0.8;

void setup()
{
  size(400, 400);
}

void draw()
{
  { //This line of code works on the circle.
    background(203, 236, 255);

    // Makes the circle change color when you hover over it.
    if (sq(mouseX-xCircle)+sq(mouseY-yCircle) < 625)
    {
      fill(255, 203, 229);
      stroke(255);
    } else {
      fill(140);
      stroke(0);
    }

    // Draws the circle
    ellipse(xCircle, yCircle, 50, 50);

    // Moves the circle
      xCircle += vxCircle;
      yCircle += vyCircle;
      vyCircle +=yAcceleration;

    // The circle moves with the mouse when it is clicked & dragged
    if ((mousePressed)&&(sq(mouseX-xCircle)+
      sq(mouseY-yCircle) < 625)) {
      xCircle = mouseX;
      yCircle = mouseY;
      vxCircle = 0;
      vyCircle = 0;
    }

    // Circle bounces from the top and bottom of the screen
    if (yCircle + 25 > height)
      vyCircle = -abs(vyCircle)*damping;
    if (yCircle < 0)
      vyCircle = 5;

    // Circle bounces from the right and left of the screen
    if (xCircle +25 > width)
      vxCircle = -abs(vxCircle)*damping;
    if (xCircle < 0)
      vxCircle = abs(vxCircle)*damping;
  }

  { //This block of code works on the rectangle.
    // Makes the rectangle change color when you hover over it.
    if (mouseX > xRect && mouseX < xRect + 50 && mouseY >
      yRect && mouseY < yRect + 50)
    {
      fill(152, 162, 247);
      stroke(255);
    } else
    {
      fill(100);
      stroke(0);
    }
    //Draws the rectangle
    rect(xRect, yRect, 50, 50);

    //Moves the rectangle
      xRect += vxRect;
      yRect += vyRect;
      vyRect +=yAcceleration;

    // Makes the rectangle move with the mouse when pressed & dragged
    if ((mousePressed)&&(mouseX > xRect &&
      mouseX < xRect + 50 && mouseY >
      yRect && mouseY < yRect + 50)) {

      // The added -25 makes it so that the boundary of the rectangle bounces off of the edges of the screen
        xRect = mouseX -25;
        yRect = mouseY -25;
        vxRect = 0;
        vyRect = 0;
    }

    // Rectangle bounce from bottom & top of screen
    if (yRect +50 > height)
      vyRect = -abs(vyRect)*damping;
    if (yRect < 0)
      vyRect = 5;

    // Rectangle bounce from the right & left of the screen
    if (xRect + 50> width)
      vxRect = -abs(vxRect)*damping;
    if (xRect < 0)
      vxRect = abs(vxRect)*damping;
  }

  { // This block of code works on the triangle.

    // Makes the triangle change color when the mouse hovers over it.
    if ((mouseY-y2Triangle > -1.6667*(mouseX-x2Triangle))&&
      (mouseY-y3Triangle > 1.6667*(mouseX-x3Triangle))&&(mouseY-y3Triangle < 0))
    {
      fill(250, 226, 167);
      stroke(255);
    } else
    {
      fill(70);
      stroke(0);
    }

    //Draws the triangle
    triangle(x1Triangle, y1Triangle, x2Triangle, y2Triangle, x3Triangle, y3Triangle);

    // If the mouse is pressed within the triangle, the triangle
    // will move with the mouse as it is dragged.
    if ((mousePressed)&&(mouseY-y2Triangle > -1.6667*(mouseX-x2Triangle))&&
      (mouseY-y3Triangle > 1.6667*(mouseX-x3Triangle))&&(mouseY-y3Triangle < 0)) {

      x1Triangle = mouseX;
      y1Triangle = mouseY - 25;
      x2Triangle = mouseX - 30;
      y2Triangle = mouseY + 25;
      x3Triangle = mouseX + 30;
      y3Triangle = mouseY + 25;
      vxTriangle = 0;
      vyTriangle = 0;
    }

    // Moves the triangle
      x1Triangle += vxTriangle;
      y1Triangle += vyTriangle;
      x2Triangle += vxTriangle;
      y2Triangle += vyTriangle;
      x3Triangle += vxTriangle;
      y3Triangle += vyTriangle;
      vyTriangle +=yAcceleration;

    // bounce from the bottom & top of the screen
    if (y2Triangle> height)
      vyTriangle = -abs(vyTriangle)*damping;
    if (y2Triangle < 0)
      vyTriangle= 5;

    // bounce from right of screen
    if (x3Triangle > width)
      vxTriangle = -abs(vxTriangle)*damping;

    // bounce from left of screen
    if (x2Triangle < 0)
      vxTriangle = abs(vxTriangle)*damping;
  }
}
