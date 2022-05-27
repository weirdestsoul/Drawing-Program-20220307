//Global Variables
//
void buttonFunctions() {
//Exit
if(mouseX>=quitButtonX && mouseX<=quitButtonX + quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
//
//Paper reset
if (mouseX>=secondTextX && mouseX<=secondTextX+secondTextWidth && mouseY>= secondTextY && mouseY<=secondTextY+secondTextHeight) paper=true;
//
//Line draw
if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) { 
  if (drawLine == false) {
    drawLine = true;
  } else {
    drawLine = false;}}//Button Paper (Drawing Surface)
//

}//End buttonFunctions
