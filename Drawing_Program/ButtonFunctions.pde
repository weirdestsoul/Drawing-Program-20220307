//Global Variables
//
void buttonFunctions() {
//Exit
if(mouseX>=quitButtonX && mouseX<=quitButtonX + quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
//
//Paper reset
if (mouseX>=secondTextX && mouseX<=secondTextX+secondTextWidth && mouseY>= secondTextY && mouseY<=secondTextY+secondTextHeight) paper=true;
//
//Background Tool Colors
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*6/35 && mouseY<=displayWidth*6/35+fillButton) {
  backgroundColour=red;
  GUISetup();
}
//
if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*6/35 && mouseY<=displayWidth*6/35+fillButton) {
  backgroundColour=rorange;
  GUISetup();
}
//
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*6/35 && mouseY<=displayWidth*6/35+fillButton) {
  backgroundColour=orange; 
  GUISetup();
}
//
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*6/35 && mouseY<=displayWidth*6/35+fillButton) {
  backgroundColour=yorange;
  GUISetup();
}
//
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*7/35 && mouseY<=displayWidth*7/35+fillButton) {
  backgroundColour=yellow;
  GUISetup();
}
//
if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*7/35 && mouseY<=displayWidth*7/35+fillButton) {
  backgroundColour=ygreen;
  GUISetup();
}
//
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*7/35 && mouseY<=displayWidth*7/35+fillButton) {
  backgroundColour=green;
  GUISetup();
}
//
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*7/35 && mouseY<=displayWidth*7/35+fillButton) {
  backgroundColour=bgreen;
  GUISetup();
}
//
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*8/35 && mouseY<=displayWidth*8/35+fillButton) {
  backgroundColour=blue;
  GUISetup();
}
//
if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*8/35 && mouseY<=displayWidth*8/35+fillButton) {
  backgroundColour=bviolet;
  GUISetup();
}
//
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*8/35 && mouseY<=displayWidth*8/35+fillButton) {
  backgroundColour=violet;
  GUISetup();
}
//
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*8/35 && mouseY<=displayWidth*8/35+fillButton) {
  backgroundColour=rviolet;
  GUISetup();
}
//
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*9/35 && mouseY<=displayWidth*9/35+fillButton) {
  backgroundColour=black;
  GUISetup();
}
//
if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*9/35 && mouseY<=displayWidth*9/35+fillButton) {
  backgroundColour=dgrey;
  GUISetup();
}
//
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*9/35 && mouseY<=displayWidth*9/35+fillButton) {
  backgroundColour=white;
  GUISetup();
}
//
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*9/35 && mouseY<=displayWidth*9/35+fillButton) {
  GUISetup();
  eraser=true;
}
//

//Drawing Tool Colors
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*1/35 && mouseY<=displayWidth*1/35+fillButton) {
  toolColour=red;
  eraser=false;
}
//
if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*1/35 && mouseY<=displayWidth*1/35+fillButton) {
  toolColour=rorange;
  eraser=false;
}
//
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*1/35 && mouseY<=displayWidth*1/35+fillButton) {
  toolColour=orange; 
  eraser=false;
}
//
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*1/35 && mouseY<=displayWidth*1/35+fillButton) {
  toolColour=yorange;
  eraser=false;
}
//
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*2/35 && mouseY<=displayWidth*2/35+fillButton) {
  toolColour=yellow;
  eraser=false;
}
//
if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*2/35 && mouseY<=displayWidth*2/35+fillButton) {
  toolColour=ygreen;
  eraser=false;
}
//
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*2/35 && mouseY<=displayWidth*2/35+fillButton) {
  toolColour=green;
  eraser=false;
}
//
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*2/35 && mouseY<=displayWidth*2/35+fillButton) {
  toolColour=bgreen;
  eraser=false;
}
//
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*3/35 && mouseY<=displayWidth*3/35+fillButton) {
  toolColour=blue;
  eraser=false;
}
//
if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*3/35 && mouseY<=displayWidth*3/35+fillButton) {
  toolColour=bviolet;
  eraser=false;
}
//
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*3/35 && mouseY<=displayWidth*3/35+fillButton) {
  toolColour=violet;
  eraser=false;
}
//
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*3/35 && mouseY<=displayWidth*3/35+fillButton) {
  toolColour=rviolet;
  eraser=false;
}
//
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+fillButton && mouseY>= displayWidth*4/35 && mouseY<=displayWidth*4/35+fillButton) {
  toolColour=black;
  eraser=false;
}
//
if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+fillButton && mouseY>= displayWidth*4/35 && mouseY<=displayWidth*4/35+fillButton) {
  toolColour=dgrey;
  eraser=false;
}
//
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+fillButton && mouseY>= displayWidth*4/35 && mouseY<=displayWidth*4/35+fillButton) {
  toolColour=white;
  eraser=false;
}
//
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+fillButton && mouseY>= displayWidth*4/35 && mouseY<=displayWidth*4/35+fillButton) {
  eraser=true;
}
//
if(eraser==true)toolColour=backgroundColour;
//
//Stroke Buttons
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight)
if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight)
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight)
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight)
//Shape Buttons
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight)
if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight)
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight)
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight)
//Line draw
if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) { 
  if (drawTool == false) {
    drawTool = true;
  } else {
    drawTool = false;}}//Button Paper (Drawing Surface)
//

}//End buttonFunctions
