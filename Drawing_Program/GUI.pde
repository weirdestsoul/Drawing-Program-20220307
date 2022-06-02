//Global Variables
float fillButton, strokeWidth, strokeHeight, shapeWidth, shapeHeight;
//
void GUIDraw() {
//Background
fill(GUI);
strokeWeight(noStroke);
stroke(GUI);
rect(0, 0, displayWidth*6/35, displayHeight);
rect(0, displayHeight*6/7, displayWidth, displayHeight*1/5);
stroke(strokeReset);
fill(resetColour);
//
//Quit Button
if (mouseX>=quitButtonX && mouseX<=quitButtonX + quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) {
quitButtonColour = red;
} else {
quitButtonColour = black;
}//End Quit Button Hoverover
fill(quitButtonColour);
strokeWeight(noStroke);
rect(quitButtonX,quitButtonY, quitButtonWidth, quitButtonHeight);
stroke(reset);
fill(resetColour);
//
//Reset Button
fill(white);
rect(secondTextX, secondTextY, secondTextWidth, secondTextHeight);
fill(black); //Ink
//Draw colour buttons
strokeWeight(noStroke);
//row 1
fill(red);
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*1/35 && mouseY<=displayWidth*1/35+fillButton) {strokeWeight(2);} else {
  strokeWeight(0);}
rect(displayWidth*1/35, displayWidth*1/35, fillButton, fillButton);
strokeWeight(0);
fill(rorange);
rect(displayWidth*2/35, displayWidth*1/35, fillButton, fillButton);
fill(orange);
rect(displayWidth*3/35, displayWidth*1/35, fillButton, fillButton);
fill(yorange);
rect(displayWidth*4/35, displayWidth*1/35, fillButton, fillButton);
//row 2
fill(yellow);
rect(displayWidth*1/35, displayWidth*2/35, fillButton, fillButton);
fill(ygreen);
rect(displayWidth*2/35, displayWidth*2/35, fillButton, fillButton);
fill(green);
rect(displayWidth*3/35, displayWidth*2/35, fillButton, fillButton);
fill(bgreen);
rect(displayWidth*4/35, displayWidth*2/35, fillButton, fillButton);
//row 3
fill(blue);
rect(displayWidth*1/35, displayWidth*3/35, fillButton, fillButton);
fill(bviolet);
rect(displayWidth*2/35, displayWidth*3/35, fillButton, fillButton);
fill(violet);
rect(displayWidth*3/35, displayWidth*3/35, fillButton, fillButton);
fill(rviolet);
rect(displayWidth*4/35, displayWidth*3/35, fillButton, fillButton);
//row 4
fill(black);
rect(displayWidth*1/35, displayWidth*4/35, fillButton, fillButton);
fill(dgrey);
rect(displayWidth*2/35, displayWidth*4/35, fillButton, fillButton);
fill(white);
rect(displayWidth*3/35, displayWidth*4/35, fillButton, fillButton);
fill(backgroundColour);
rect(displayWidth*4/35, displayWidth*4/35, fillButton, fillButton);
//
strokeWeight(strokeReset);
//background fill buttons
strokeWeight(noStroke);
//row 1
fill(red);
rect(displayWidth*1/35, displayWidth*6/35, fillButton, fillButton);
fill(rorange);
rect(displayWidth*2/35, displayWidth*6/35, fillButton, fillButton);
fill(orange);
rect(displayWidth*3/35, displayWidth*6/35, fillButton, fillButton);
fill(yorange);
rect(displayWidth*4/35, displayWidth*6/35, fillButton, fillButton);
//row 2
fill(yellow);
rect(displayWidth*1/35, displayWidth*7/35, fillButton, fillButton);
fill(ygreen);
rect(displayWidth*2/35, displayWidth*7/35, fillButton, fillButton);
fill(green);
rect(displayWidth*3/35, displayWidth*7/35, fillButton, fillButton);
fill(bgreen);
rect(displayWidth*4/35, displayWidth*7/35, fillButton, fillButton);
//row 3
fill(blue);
rect(displayWidth*1/35, displayWidth*8/35, fillButton, fillButton);
fill(bviolet);
rect(displayWidth*2/35, displayWidth*8/35, fillButton, fillButton);
fill(violet);
rect(displayWidth*3/35, displayWidth*8/35, fillButton, fillButton);
fill(rviolet);
rect(displayWidth*4/35, displayWidth*8/35, fillButton, fillButton);
//row 4
fill(black);
rect(displayWidth*1/35, displayWidth*9/35, fillButton, fillButton);
fill(dgrey);
rect(displayWidth*2/35, displayWidth*9/35, fillButton, fillButton);
fill(white);
rect(displayWidth*3/35, displayWidth*9/35, fillButton, fillButton);
fill(backgroundColour);
rect(displayWidth*4/35, displayWidth*9/35, fillButton, fillButton);
//
//Stroke buttons

if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight){ 
  fill(yellow);
  rect(displayWidth*1/35, displayWidth*11/35, strokeWidth, strokeHeight);
} else {
  fill(white);
  rect(displayWidth*1/35, displayWidth*11/35, strokeWidth, strokeHeight);
}
if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight){ 
  fill(yellow);
  rect(displayWidth*2/35, displayWidth*11/35, strokeWidth, strokeHeight);
} else {
  fill(white);
  rect(displayWidth*2/35, displayWidth*11/35, strokeWidth, strokeHeight);
}
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight){ 
  fill(yellow);
  rect(displayWidth*3/35, displayWidth*11/35, strokeWidth, strokeHeight);
} else {
  fill(white);
  rect(displayWidth*3/35, displayWidth*11/35, strokeWidth, strokeHeight);
}
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight){ 
  fill(yellow);
  rect(displayWidth*4/35, displayWidth*11/35, strokeWidth, strokeHeight);
} else {
  fill(white);
  rect(displayWidth*4/35, displayWidth*11/35, strokeWidth, strokeHeight);
}
//
//Shape buttons
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight){ 
fill(yellow);
rect(displayWidth*1/35, displayWidth*514/1295, strokeWidth, strokeHeight);
} else {
  fill(white);
  rect(displayWidth*1/35, displayWidth*514/1295, strokeWidth, strokeHeight);
}

if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight){ 
fill(yellow);
rect(displayWidth*2/35, displayWidth*514/1295, strokeWidth, strokeHeight);
} else {
  fill(white);
  rect(displayWidth*2/35, displayWidth*514/1295, strokeWidth, strokeHeight);
}
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight){ 
fill(yellow);
} else {
  fill(white);
  rect(displayWidth*3/35, displayWidth*514/1295, strokeWidth, strokeHeight);
}
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight){ 
fill(yellow);
rect(displayWidth*4/35, displayWidth*514/1295, strokeWidth, strokeHeight);
} else {
  fill(white);
  rect(displayWidth*4/35, displayWidth*514/1295, strokeWidth, strokeHeight);
}





//
strokeWeight(strokeReset);
//
if (paper==true) GUISetup();
}//End GUIDraw
//
