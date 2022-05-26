//Global Variables
float fillButton, strokeWidth, strokeHeight, shapeWidth, shapeHeight;
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
rect(0, 0, displayWidth*6/35, displayHeight);
rect(0, displayHeight*6/7, displayWidth, displayHeight*1/5);
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
//Draw colour buttons
//row 1
rect(displayWidth*1/35, displayWidth*1/35, fillButton, fillButton);
rect(displayWidth*2/35, displayWidth*1/35, fillButton, fillButton);
rect(displayWidth*3/35, displayWidth*1/35, fillButton, fillButton);
rect(displayWidth*4/35, displayWidth*1/35, fillButton, fillButton);
//row 2
rect(displayWidth*1/35, displayWidth*2/35, fillButton, fillButton);
rect(displayWidth*2/35, displayWidth*2/35, fillButton, fillButton);
rect(displayWidth*3/35, displayWidth*2/35, fillButton, fillButton);
rect(displayWidth*4/35, displayWidth*2/35, fillButton, fillButton);
//row 3
rect(displayWidth*1/35, displayWidth*3/35, fillButton, fillButton);
rect(displayWidth*2/35, displayWidth*3/35, fillButton, fillButton);
rect(displayWidth*3/35, displayWidth*3/35, fillButton, fillButton);
rect(displayWidth*4/35, displayWidth*3/35, fillButton, fillButton);
//row 4
rect(displayWidth*1/35, displayWidth*4/35, fillButton, fillButton);
rect(displayWidth*2/35, displayWidth*4/35, fillButton, fillButton);
rect(displayWidth*3/35, displayWidth*4/35, fillButton, fillButton);
rect(displayWidth*4/35, displayWidth*4/35, fillButton, fillButton);
//
//background fill buttons
//row 1
rect(displayWidth*1/35, displayWidth*6/35, fillButton, fillButton);
rect(displayWidth*2/35, displayWidth*6/35, fillButton, fillButton);
rect(displayWidth*3/35, displayWidth*6/35, fillButton, fillButton);
rect(displayWidth*4/35, displayWidth*6/35, fillButton, fillButton);
//row 2
rect(displayWidth*1/35, displayWidth*7/35, fillButton, fillButton);
rect(displayWidth*2/35, displayWidth*7/35, fillButton, fillButton);
rect(displayWidth*3/35, displayWidth*7/35, fillButton, fillButton);
rect(displayWidth*4/35, displayWidth*7/35, fillButton, fillButton);
//row 3
rect(displayWidth*1/35, displayWidth*8/35, fillButton, fillButton);
rect(displayWidth*2/35, displayWidth*8/35, fillButton, fillButton);
rect(displayWidth*3/35, displayWidth*8/35, fillButton, fillButton);
rect(displayWidth*4/35, displayWidth*8/35, fillButton, fillButton);
//row 4
rect(displayWidth*1/35, displayWidth*9/35, fillButton, fillButton);
rect(displayWidth*2/35, displayWidth*9/35, fillButton, fillButton);
rect(displayWidth*3/35, displayWidth*9/35, fillButton, fillButton);
rect(displayWidth*4/35, displayWidth*9/35, fillButton, fillButton);
//
//Stroke buttons
rect(displayWidth*1/35, displayWidth*11/35, strokeWidth, strokeHeight);
rect(displayWidth*1/35, displayWidth*11/35, strokeWidth, strokeHeight);
rect(displayWidth*1/35, displayWidth*11/35, strokeWidth, strokeHeight);
rect(displayWidth*1/35, displayWidth*11/35, strokeWidth, strokeHeight);
}//End GUIDraw
