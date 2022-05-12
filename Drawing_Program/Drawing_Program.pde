//Global Variables
Boolean draw = false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
//
void setup() {
  //Manditory: Mistaken display orientation should break app, feedback to console CANVAS
  frameRate(120);
  fullScreen(); //displayWidth, displayHeight
  //
  drawingSurfaceX = displayWidth*0;
  drawingSurfaceY = displayHeight*0;
  drawingSurfaceWidth = displayWidth*3/4;
  drawingSurfaceHeight = displayHeight*4/5;
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}//End setup
//
void draw() {
  if (draw==true) line( mouseX, mouseY, pmouseX, pmouseY ) ; //End Line Draw
}//End draw
//
void keyPressed() {
  
}//End keyPressed
//
void mousePressed() {
  //Paper-Button
  if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) { 
  if (draw == false) {
    draw = true;
  } else{
    draw = false;}}//Button Paper (Drawing Surface)
 
}//End mousePressed
//End MAIN
