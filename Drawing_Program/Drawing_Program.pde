//Global Variables
Boolean drawLine = false, drawCircle = false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float drawingDiameter;
int reset = 1;
color white = #FFFFFF, resetColour = white, red = #FF0303, black = 0, quitButtonColour;
PFont font;
int initialFontSize = 55, size;
String quitButtonString = "QUIT";
//
void setup() {
  //Manditory: Mistaken display orientation should break app, feedback to console CANVAS
  frameRate(240);
  fullScreen(); //displayWidth, displayHeight
  population();
  //
  font = createFont ("Comic Sans MS", initialFontSize);
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}//End setup
//
void draw() {
if (drawLine==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) {line( mouseX, mouseY, pmouseX, pmouseY );}
if (drawCircle==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter ); //Circle drawing tool
//
if (mouseX>=quitButtonX && mouseX<=quitButtonX + quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) {
quitButtonColour = red;
} else {
quitButtonColour = black;
//Text, Quit Button
fill(black);
textAlign (CENTER, CENTER);
fill(resetColour);
//
size = 30; //Change until fit
textFont(font, size);
text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
//
//

}//End Quit Button Hoverover

fill(quitButtonColour);
noStroke();
rect(quitButtonX,quitButtonY, quitButtonWidth, quitButtonHeight);
stroke(reset);
fill(resetColour);
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
  } else{
    drawLine = false;}}//Button Paper (Drawing Surface)
 
}//End mousePressed
//End MAIN
