//Global Variables
//
void GUISetup() {
  fill(white);
  noStroke();
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  stroke(1); 
  paper=false;
  fill(reset);
}//End GUISetup
//
void GUIDraw() {
//Background
fill(GUI);
noStroke();
rect(0, 0, displayWidth*1/4, displayHeight);
rect(0, displayHeight*4/5, displayWidth, displayHeight*1/5);
stroke(1);
fill(resetColour);
//
//Quit Button
if (mouseX>=quitButtonX && mouseX<=quitButtonX + quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) {
quitButtonColour = red;
} else {
quitButtonColour = black;
}//End Quit Button Hoverover
fill(quitButtonColour);
noStroke();
rect(quitButtonX,quitButtonY, quitButtonWidth, quitButtonHeight);
stroke(reset);
fill(resetColour);
//
//Reset Button
fill(white);
rect(secondTextX, secondTextY, secondTextWidth, secondTextHeight);
fill(black); //Ink
}//End GUIDraw
