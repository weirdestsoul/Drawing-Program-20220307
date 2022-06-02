//Global Variables

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
drawingTools();
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
//
void mouseReleased(){
drawTool=false;
}
//End MAIN
