//Global Variables
Boolean drawLine = false, drawCircle = false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float drawingDiameter;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
int reset = 1;
color white = #FFFFFF, resetColour = white, red = #FF0303, black = 0, quitButtonColour, GUI = #969EA5;
PFont font;
int initialFontSize = 55;
int size;
String quitButtonString = "QUIT";
String secondTextString = "Waluigi!";
//
void setup() {
  //Manditory: Mistaken display orientation should break app, feedback to console CANVAS
  frameRate(144);
  fullScreen(); //displayWidth, displayHeight
  population();
  //
  font = createFont ("Comic Sans MS", initialFontSize);
  //
  noStroke();
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  stroke(1);
}//End setup
//
void draw() {
if (drawLine==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) {line( mouseX, mouseY, pmouseX, pmouseY );}
if (drawLine==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter ); //Circle drawing tool
//
if (mouseX>=quitButtonX && mouseX<=quitButtonX + quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) {
quitButtonColour = red;
} else {
quitButtonColour = black;
}//End Quit Button Hoverover
//GUI
fill(GUI);
noStroke();
rect(0, 0, displayWidth*1/4, displayHeight);
rect(0, displayHeight*4/5, displayWidth, displayHeight*1/5);
stroke(1);
fill(resetColour);
//
fill(quitButtonColour);
noStroke();
rect(quitButtonX,quitButtonY, quitButtonWidth, quitButtonHeight);
stroke(reset);
fill(resetColour);
//
//Text, Quit Button
fill(black);
textAlign (CENTER, CENTER);
size = 40; //Change until fit
textFont(font, size);
text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
fill(resetColour);
//
//Second rectangle with more text
fill(white);
rect(secondTextX, secondTextY, secondTextWidth, secondTextHeight);
fill(black); //Ink
//
fill(black);
textAlign (CENTER, CENTER);
size = 40; //Change until fit
textFont(font, size);
text(secondTextString, secondTextX, secondTextY, secondTextWidth, secondTextHeight);
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
  } else {
    drawLine = false;}}//Button Paper (Drawing Surface)
//
 
}//End mousePressed

void mouseReleased(){
drawLine=false; 
drawCircle=false;
}
//End MAIN
