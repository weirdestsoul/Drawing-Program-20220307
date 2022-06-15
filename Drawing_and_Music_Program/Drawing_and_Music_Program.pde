
//Global Variables
//
void setup() {
  frameRate(144);
  fullScreen(); //displayWidth, displayHeight
  population();
  musicSetup();
  textSetup();
  GUISetup();
}//End setup
//
void draw() {
  populationDraw();
  musicDraw();
  drawingTools();
  GUIDraw();
  textDraw();
}//End draw
//
void keyPressed() {
  musicKeyPressed();
}//End keyPressed
//
void mousePressed() {
musicMousePressed();
buttonFunctions();
}//End mousePressed
//
void mouseReleased(){
drawTool=false;
volumeHeld=false;
}
//End MAIN
