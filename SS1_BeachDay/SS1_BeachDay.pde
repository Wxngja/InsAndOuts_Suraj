//A day at the beach by Suraj

//I would like to make a beach with animated water, moving clouds, sun rays shining, and people walking on the beach but for now this is a rough sketch.

//canvas
size(1080,720);
background(137, 207, 240);
//sun
fill(255, 204, 0);
circle(900, 100 , 100);
//sand
fill(201,182,14);
rect(0,500,1080,500);
triangle(500, 450, 400, 550, 500, 550);
//cloud 1
fill(255,255,255);
noStroke();
ellipse(100 + 50, 50 + 10, 70, 50);
ellipse(100 + 30, 50 + 30, 120, 70);
ellipse(100 + 10, 50 + 40, 100, 50);
//cloud 2
noStroke();
ellipse(500 + 50, 150 + 10, 70, 50);
ellipse(500 + 30, 150 + 30, 120, 70);
ellipse(500 + 10, 150 + 40, 100, 50);
//cloud 3
noStroke();
ellipse(300 + 50, 120 + 10, 70, 50);
ellipse(300 + 30, 120 + 30, 120, 70);
ellipse(300 + 10, 120 + 40, 100, 50);
