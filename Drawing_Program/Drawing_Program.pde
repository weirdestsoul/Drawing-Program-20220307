//Global Variables
Boolean drawLine = false, drawCircle = false, paper=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float drawingDiameter;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
int reset = 1;
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
if (paper==true) GUISetup();
fill(black);
if (drawLine==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) line( mouseX, mouseY, pmouseX, pmouseY );
if (drawCircle==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter ); //Circle drawing tool
GUIDraw();
textDraw();
}//End draw
//
void keyPressed() {
  
}//End keyPressed
//
void mousePressed() {
buttonFunctions();
}//End mousePressed

void mouseReleased(){
drawLine=false; 
drawCircle=false;
}
//End MAIN
