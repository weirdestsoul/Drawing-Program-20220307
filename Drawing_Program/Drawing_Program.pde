//Global Variables
Boolean drawLine = false, drawCircle = false, paper=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float drawingDiameter;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
int reset = 1;
color white = #FFFFFF, resetColour = white, red = #FF0303, black = 0, quitButtonColour, GUI = #969EA5;
//
void setup() {
  //Manditory: Mistaken display orientation should break app, feedback to console CANVAS
  frameRate(144);
  fullScreen(); //displayWidth, displayHeight
  population();
  textSetup();
  GUISetup();
}//End setup
//
void draw() {
  if (paper==true) {
    GUISetup();
  }
if (drawLine==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) {line( mouseX, mouseY, pmouseX, pmouseY );}
if (drawLine==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter ); //Circle drawing tool
//
GUIDraw();
textDraw();
}//End draw
//
void keyPressed() {
  
}//End keyPressed
//
void mousePressed() {
//Paper-Button
if(mouseX>=quitButtonX && mouseX<=quitButtonX + quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
  //
  if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) { 
  if (drawLine == false) {
    drawLine = true;
  } else {
    drawLine = false;}}//Button Paper (Drawing Surface)
//
 if (mouseX>=secondTextX && mouseX<=secondTextX+secondTextWidth && mouseX>= secondTextY && mouseY<=secondTextY+secondTextHeight) paper=true;
}//End mousePressed

void mouseReleased(){
drawLine=false; 
drawCircle=false;
}
//End MAIN
