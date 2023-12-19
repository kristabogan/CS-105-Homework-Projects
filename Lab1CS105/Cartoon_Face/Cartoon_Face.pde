// Krista Bogan
size(1000,1000);
background(1,73,106);
rectMode(CORNERS);
// These functions create the window size, background color (navy),
// preferred rectangle mode

fill(130,222,216);
strokeWeight(10);
stroke(172,240,236);
rect(400,400,700,1000);
// The above functions form the blue t-shirt with a light blue stroke around it.

noStroke();
ellipseMode(CENTER);
fill(252,237,207);
ellipse(500,350,500,400);
rect(650,700,750,550);
rect(350,700,397,550);

// These functions indicate a peach circle for the head, with no outline (no Stroke).
// The ellipse mode indicates that the circle is placed based on a center point. The
// rect functions form the cartoon's arms.


fill(255,155,23);
ellipse(700,250,100,150);
quad(300,150,750,150,650,300,200,300);
// Create the quadrilateral and ellipse that make up the orange hair.

fill(252,237,207);
ellipse(720,350,100,150);
// Form the cartoon ear. This must be coded after the hair (so it is drawn on top).

fill(255);
ellipse(300,370,100,90);
ellipse(550,370,100,90);
// Creates the whites of the eyes.

fill(125,209,247);
ellipse(280,370,60,80);
ellipse(530,370,60,80);
// Creates the blue irises.

fill(0);
ellipse(280,370,30,40);
ellipse(530,370,30,40);
// Creates the pupils.

fill(250,192,213);
ellipse(480,500,40,70);
stroke(222,130,164);
strokeWeight(5);
line(480,500,480,470);
// Creates the pink tongue and the thinner (strokeWeight(5)) dark pink tongue line.

stroke(0);
strokeWeight(10);
line(320,450,410,500);
line(520,450,410,500);
// Creates two thicker lines to form the "v" shaped mouth.

stroke(224,200,156);
line(380,430,420,430);
// Creates the dark peach nose line.
