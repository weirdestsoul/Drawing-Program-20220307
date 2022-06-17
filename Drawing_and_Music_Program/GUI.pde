//Global Variables
float fillButton, strokeWidth, strokeHeight, shapeWidth, shapeHeight;
PImage play, pause, next, back, loop;
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
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>= displayWidth*1/35 && mouseY<=displayWidth*1/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(red);
rect(displayWidth*1/35, displayWidth*1/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+strokeWidth && mouseY>= displayWidth*1/35 && mouseY<=displayWidth*1/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(rorange);
rect(displayWidth*2/35, displayWidth*1/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+strokeWidth && mouseY>= displayWidth*1/35 && mouseY<=displayWidth*1/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(orange);
rect(displayWidth*3/35, displayWidth*1/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+strokeWidth && mouseY>= displayWidth*1/35 && mouseY<=displayWidth*1/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(yorange);
rect(displayWidth*4/35, displayWidth*1/35, strokeWidth, strokeWidth);
strokeWeight(0);
//row 2
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>= displayWidth*2/35 && mouseY<=displayWidth*2/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(yellow);
rect(displayWidth*1/35, displayWidth*2/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+strokeWidth && mouseY>= displayWidth*2/35 && mouseY<=displayWidth*2/35+strokeWidth) {strokeWeight(2);} else {
 strokeWeight(0);}
fill(ygreen);
rect(displayWidth*2/35, displayWidth*2/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+strokeWidth && mouseY>= displayWidth*2/35 && mouseY<=displayWidth*2/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(green);
rect(displayWidth*3/35, displayWidth*2/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+strokeWidth && mouseY>= displayWidth*2/35 && mouseY<=displayWidth*2/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(bgreen);
rect(displayWidth*4/35, displayWidth*2/35, strokeWidth, strokeWidth);
strokeWeight(0);
//row 3
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>= displayWidth*3/35 && mouseY<=displayWidth*3/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(blue);
rect(displayWidth*1/35, displayWidth*3/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+strokeWidth && mouseY>= displayWidth*3/35 && mouseY<=displayWidth*3/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(bviolet);
rect(displayWidth*2/35, displayWidth*3/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+strokeWidth && mouseY>= displayWidth*3/35 && mouseY<=displayWidth*3/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(violet);
rect(displayWidth*3/35, displayWidth*3/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+strokeWidth && mouseY>= displayWidth*3/35 && mouseY<=displayWidth*3/35+strokeWidth) {strokeWeight(2);} else {
strokeWeight(0);}
fill(rviolet);
rect(displayWidth*4/35, displayWidth*3/35, strokeWidth, strokeWidth);
strokeWeight(0);
//row 4
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>= displayWidth*4/35 && mouseY<=displayWidth*4/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(black);
rect(displayWidth*1/35, displayWidth*4/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+strokeWidth && mouseY>= displayWidth*4/35 && mouseY<=displayWidth*4/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(dgrey);
rect(displayWidth*2/35, displayWidth*4/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+strokeWidth && mouseY>= displayWidth*4/35 && mouseY<=displayWidth*4/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(white);
rect(displayWidth*3/35, displayWidth*4/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+strokeWidth && mouseY>= displayWidth*4/35 && mouseY<=displayWidth*4/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(backgroundColour);
rect(displayWidth*4/35, displayWidth*4/35, strokeWidth, strokeWidth);
strokeWeight(0);
//
strokeWeight(strokeReset);
//background fill buttons
strokeWeight(noStroke);
//row 1
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>= displayWidth*6/35 && mouseY<=displayWidth*6/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(red);
rect(displayWidth*1/35, displayWidth*6/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+strokeWidth && mouseY>= displayWidth*6/35 && mouseY<=displayWidth*6/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(rorange);
rect(displayWidth*2/35, displayWidth*6/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+strokeWidth && mouseY>= displayWidth*6/35 && mouseY<=displayWidth*6/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(orange);
rect(displayWidth*3/35, displayWidth*6/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+strokeWidth && mouseY>= displayWidth*6/35 && mouseY<=displayWidth*6/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(yorange);
rect(displayWidth*4/35, displayWidth*6/35, strokeWidth, strokeWidth);
strokeWeight(0);
//row 2
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>= displayWidth*7/35 && mouseY<=displayWidth*7/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(yellow);
rect(displayWidth*1/35, displayWidth*7/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+strokeWidth && mouseY>= displayWidth*7/35 && mouseY<=displayWidth*7/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(ygreen);
rect(displayWidth*2/35, displayWidth*7/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+strokeWidth && mouseY>= displayWidth*7/35 && mouseY<=displayWidth*7/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(green);
rect(displayWidth*3/35, displayWidth*7/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+strokeWidth && mouseY>= displayWidth*7/35 && mouseY<=displayWidth*7/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(bgreen);
rect(displayWidth*4/35, displayWidth*7/35, strokeWidth, strokeWidth);
strokeWeight(0);
//row 3
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>= displayWidth*8/35 && mouseY<=displayWidth*8/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(blue);
rect(displayWidth*1/35, displayWidth*8/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+strokeWidth && mouseY>= displayWidth*8/35 && mouseY<=displayWidth*8/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(bviolet);
rect(displayWidth*2/35, displayWidth*8/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+strokeWidth && mouseY>= displayWidth*8/35 && mouseY<=displayWidth*8/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(violet);
rect(displayWidth*3/35, displayWidth*8/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+strokeWidth && mouseY>= displayWidth*8/35 && mouseY<=displayWidth*8/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(rviolet);
rect(displayWidth*4/35, displayWidth*8/35, strokeWidth, strokeWidth);
strokeWeight(0);
//row 4
if(mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>= displayWidth*9/35 && mouseY<=displayWidth*9/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(black);
rect(displayWidth*1/35, displayWidth*9/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+strokeWidth && mouseY>= displayWidth*9/35 && mouseY<=displayWidth*9/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(dgrey);
rect(displayWidth*2/35, displayWidth*9/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+strokeWidth && mouseY>= displayWidth*9/35 && mouseY<=displayWidth*9/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(white);
rect(displayWidth*3/35, displayWidth*9/35, strokeWidth, strokeWidth);
strokeWeight(0);
if(mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+strokeWidth && mouseY>= displayWidth*9/35 && mouseY<=displayWidth*9/35+strokeWidth) {strokeWeight(2);} else {
  strokeWeight(0);}
fill(backgroundColour);
rect(displayWidth*4/35, displayWidth*9/35, strokeWidth, strokeWidth);
strokeWeight(0);
//
//Stroke buttons
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight){ 
  strokeWeight(2);
  fill(yellow);
  stroke(black);
  rect(displayWidth*1/35, displayWidth*11/35, strokeWidth, strokeHeight);
  stroke(toolColour);
  line(displayWidth*1/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*1/8), displayWidth*1/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*7/8));
} else {
  strokeWeight(0);
  fill(white);
  stroke(black);
  rect(displayWidth*1/35, displayWidth*11/35, strokeWidth, strokeHeight);
  strokeWeight(2);
  stroke(toolColour);
  line(displayWidth*1/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*1/8), displayWidth*1/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*7/8));
}
if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight){ 
  strokeWeight(2);
  fill(yellow);
  stroke(black);
  rect(displayWidth*2/35, displayWidth*11/35, strokeWidth, strokeHeight);
  stroke(toolColour);
  strokeWeight(6);
  line(displayWidth*2/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*1/8), displayWidth*2/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*7/8));
} else {
  strokeWeight(0);
  fill(white);
  stroke(black);
  rect(displayWidth*2/35, displayWidth*11/35, strokeWidth, strokeHeight);
  stroke(toolColour);
  strokeWeight(6);
  line(displayWidth*2/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*1/8), displayWidth*2/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*7/8));
}
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight){ 
  strokeWeight(2);
  fill(yellow);
  stroke(black);
  rect(displayWidth*3/35, displayWidth*11/35, strokeWidth, strokeHeight);
  stroke(toolColour);
  strokeWeight(10);
  line(displayWidth*3/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*1/8), displayWidth*3/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*7/8));
} else {
  strokeWeight(0);
  fill(white);
  stroke(black);
  rect(displayWidth*3/35, displayWidth*11/35, strokeWidth, strokeHeight);
  stroke(toolColour);
  strokeWeight(10);
  line(displayWidth*3/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*1/8), displayWidth*3/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*7/8));
}
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+strokeWidth && mouseY>=displayWidth*11/35 && mouseY<=displayWidth*11/35+strokeHeight){ 
  strokeWeight(2);
  fill(yellow);
  stroke(black);
  rect(displayWidth*4/35, displayWidth*11/35, strokeWidth, strokeHeight);
  strokeWeight(14);
  stroke(toolColour);
  line(displayWidth*4/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*1/8), displayWidth*4/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*7/8));
} else {
  strokeWeight(0);
  fill(white);
  stroke(black);
  rect(displayWidth*4/35, displayWidth*11/35, strokeWidth, strokeHeight);
  strokeWeight(14);
  stroke(toolColour);
  line(displayWidth*4/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*1/8), displayWidth*4/35+(strokeWidth*1/2), displayWidth*11/35+(strokeHeight*7/8));
}
stroke(black);
//
//Shape buttons
if (mouseX>=displayWidth*1/35 && mouseX<=displayWidth*1/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight){ 
  stroke(black);
  strokeWeight(2);
  fill(yellow);
  rect(displayWidth*1/35, displayWidth*514/1295, strokeWidth, strokeHeight);
  stroke(toolColour);
  strokeWeight(lineStroke);
  line(displayWidth*1/35+(strokeWidth*1/2), displayWidth*514/1295+(strokeHeight*1/8), displayWidth*1/35+(strokeWidth*1/2), displayWidth*514/1295+(strokeHeight*7/8));
} else {
  stroke(black);
  strokeWeight(0);
  fill(white);
  rect(displayWidth*1/35, displayWidth*514/1295, strokeWidth, strokeHeight);
  stroke(toolColour);
  strokeWeight(lineStroke);
  line(displayWidth*1/35+(strokeWidth*1/2), displayWidth*514/1295+(strokeHeight*1/8), displayWidth*1/35+(strokeWidth*1/2), displayWidth*514/1295+(strokeHeight*7/8));
}
if (mouseX>=displayWidth*2/35 && mouseX<=displayWidth*2/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight){ 
  stroke(black);
  strokeWeight(2);
  fill(yellow);
  rect(displayWidth*2/35, displayWidth*514/1295, strokeWidth, strokeHeight);
  fill(toolColour);
  stroke(toolColour);
  ellipse(displayWidth*2/35+(strokeWidth*1/2), displayWidth*514/1295+strokeHeight*1/2, drawingDiameter, drawingDiameter);
} else {
  stroke(black);
  strokeWeight(0);
  fill(white);
  rect(displayWidth*2/35, displayWidth*514/1295, strokeWidth, strokeHeight);
  fill(toolColour);
  stroke(toolColour);
  ellipse(displayWidth*2/35+(strokeWidth*1/2), displayWidth*514/1295+strokeHeight*1/2, drawingDiameter, drawingDiameter);
}
if (mouseX>=displayWidth*3/35 && mouseX<=displayWidth*3/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight){ 
  stroke(black);
  strokeWeight(2);
  fill(yellow);
  rect(displayWidth*3/35, displayWidth*514/1295, strokeWidth, strokeHeight);
  fill(toolColour);
  stroke(toolColour);
  triangle(displayWidth*3/35+(strokeWidth*1/2), displayWidth*514/1295+strokeHeight*1/4, displayWidth*3/35+(strokeWidth*1/6), displayWidth*514/1295+strokeHeight*3/4, displayWidth*3/35+(strokeWidth*5/6), displayWidth*514/1295+strokeHeight*3/4);
} else {
  stroke(black);
  strokeWeight(0);
  fill(white);
  rect(displayWidth*3/35, displayWidth*514/1295, strokeWidth, strokeHeight);
  fill(toolColour);
  stroke(toolColour);
  triangle(displayWidth*3/35+(strokeWidth*1/2), displayWidth*514/1295+strokeHeight*1/4, displayWidth*3/35+(strokeWidth*1/6), displayWidth*514/1295+strokeHeight*3/4, displayWidth*3/35+(strokeWidth*5/6), displayWidth*514/1295+strokeHeight*3/4);
}
if (mouseX>=displayWidth*4/35 && mouseX<=displayWidth*4/35+strokeWidth && mouseY>=displayWidth*514/1295 && mouseY<=displayWidth*514/1295+strokeHeight){ 
  stroke(black);
  strokeWeight(2);
  fill(yellow);
  rect(displayWidth*4/35, displayWidth*514/1295, strokeWidth, strokeHeight);
  stroke(toolColour);
  fill(toolColour);
  rect(displayWidth*4/35+strokeWidth*1/8, displayWidth*514/1295+strokeHeight*1/8, strokeWidth*6/8, strokeHeight*6/8);
} else {
  stroke(black);
  strokeWeight(0);
  fill(white);
  rect(displayWidth*4/35, displayWidth*514/1295, strokeWidth, strokeHeight);
  stroke(toolColour);
  fill(toolColour);
  rect(displayWidth*4/35+strokeWidth*1/8, displayWidth*514/1295+strokeHeight*1/8, strokeWidth*6/8, strokeHeight*6/8);
  stroke(reset);
}
//
strokeWeight(strokeReset);
fill(white);
//
if (paper==true) GUISetup();
//
//Music Progress Bar
stroke(black);
rect(displayWidth*16/35, displayHeight*27/28, progressBarWidth, progressBarHeight);
fill(black);
rect(displayWidth*16/35, displayHeight*27/28,(float(song[currentSong].position())/float(song[currentSong].length()))*progressBarWidth, progressBarHeight);
fill(white);
ellipse(displayWidth*16/35+(float(song[currentSong].position())/float(song[currentSong].length()))*progressBarWidth, displayHeight*27/28+displayHeight*1/400, displayHeight*1/125,displayHeight*1/125);
//
//Volume Slider
rect(displayWidth*30/35, displayHeight*27/28, displayWidth*4/35, progressBarHeight);
fill(black);
if(volumeButton<=1 && volumeButton>=0)rect(displayWidth*30/35, displayHeight*27/28, (volumeButton*displayWidth*4/35), progressBarHeight);
if(volumeButton>=1 )rect(displayWidth*30/35, displayHeight*27/28, (displayWidth*4/35), progressBarHeight);
fill(white);
//
//Music Buttons
if(mouseX>=displayWidth*54/105 && mouseX<=displayWidth*54/105+fillButton && mouseY>=displayHeight*50/56 && mouseY<=displayHeight*50/56+fillButton){
  fill(yellow);
  strokeWeight(2);
  rect(displayWidth*54/105, displayHeight*50/56, fillButton, fillButton);
}else{
  if(loopF==true){
    fill(yellow);
  }else{
  fill(white);
  }
  strokeWeight(noStroke);
  rect(displayWidth*54/105, displayHeight*50/56, fillButton, fillButton);
}
if(mouseX>=displayWidth*58/105 && mouseX<=displayWidth*58/105+fillButton && mouseY>=displayHeight*50/56 && mouseY<=displayHeight*50/56+fillButton){
  fill(yellow);
  strokeWeight(2);
  rect(displayWidth*58/105, displayHeight*50/56, fillButton, fillButton);
}else{
  fill(white);
  strokeWeight(noStroke);
  rect(displayWidth*58/105, displayHeight*50/56, fillButton, fillButton);
}
if(mouseX>=displayWidth*66/105 && mouseX<=displayWidth*66/105+fillButton && mouseY>=displayHeight*50/56 && mouseY<=displayHeight*50/56+fillButton){
  fill(yellow);
  strokeWeight(2);
  rect(displayWidth*66/105, displayHeight*50/56, fillButton, fillButton);
}else{
  fill(white);
  strokeWeight(noStroke);
  rect(displayWidth*66/105, displayHeight*50/56, fillButton, fillButton);
}
if(mouseX>=displayWidth*62/105 && mouseX<=displayWidth*62/105+fillButton && mouseY>=displayHeight*50/56 && mouseY<=displayHeight*50/56+fillButton){
  fill(yellow);
  strokeWeight(2);
  rect(displayWidth*62/105, displayHeight*50/56, fillButton, fillButton);
}else{
  fill(white);
  strokeWeight(noStroke);
  rect(displayWidth*62/105, displayHeight*50/56, fillButton, fillButton);
}
strokeWeight(2);
fill(white);
rect(displayWidth*7/35,displayHeight*49/56, displayWidth*6/35, displayHeight*3/35);
//
if(song[currentSong].isPlaying()) image(pause, displayWidth*62/105, displayHeight*50/56, fillButton, fillButton);
//
if(!song[currentSong].isPlaying()) image(play, displayWidth*62/105, displayHeight*50/56, fillButton, fillButton);
//
image(next, displayWidth*66/105, displayHeight*50/56, fillButton, fillButton);
//
image(back, displayWidth*58/105, displayHeight*50/56, fillButton, fillButton);
//
image(loop, displayWidth*54/105, displayHeight*50/56, fillButton, fillButton);

}//End GUIDraw
//
