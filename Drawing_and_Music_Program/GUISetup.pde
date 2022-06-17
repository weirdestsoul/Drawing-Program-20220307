//Global Variables
//
void GUISetup() {
  fill(backgroundColour);
  stroke(backgroundColour);
  noStroke();
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  stroke(1); 
  paper=false;
  fill(reset);
  pause = loadImage("images/pause.png");
  play = loadImage("images/playicon.png");
  next = loadImage("images/next.png");
  back = loadImage("images/rewind.png");
  loop = loadImage("images/loop.png");
}//End GUISetup
//
