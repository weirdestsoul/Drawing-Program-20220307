//Global Variables
PFont font;
int initialFontSize = 55;
int size;
String quitButtonString = "x";
String secondTextString = "Paper";
//
void textSetup() {
   font = createFont ("Leelawadee UI Semilight", initialFontSize);
}//End textSetup
//
void textDraw() {
//Text, Quit Button
fill(white);
textAlign (CENTER, CENTER);
size = 45; //Change until fit
textFont(font, size);
text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
fill(resetColour);
//
//New paper Button
if(backgroundColour==black){
fill(white); 
} else { 
fill(black);
}
textAlign (CENTER, CENTER);
size = 20; //Change until fit
textFont(font, size);
text(secondTextString, secondTextX, secondTextY, secondTextWidth, secondTextHeight);
fill(resetColour);
//
fill(black);
textAlign(CENTER,CENTER);
if(currentSong==0){
  size=30;
}else{
  size=40;
}
textFont(font, size);
text(songMetaData[currentSong].title(), displayWidth*7/35,displayHeight*49/56, displayWidth*6/35, displayHeight*2/35);
fill(reset);
//
fill(black);
textAlign(CENTER,CENTER);
size=20;
textFont(font, size);
text(songMetaData[currentSong].author(), displayWidth*8/35,displayHeight*13/14, displayWidth*4/35, displayHeight*1/35);
fill(reset);
//
fill(black);
textAlign(CENTER,CENTER);
size=20;
textFont(font, size);
text(currentTime, displayWidth*27/70,displayHeight*53/56, displayWidth*4/35, displayHeight*1/35);
fill(reset);
//
fill(black);
textAlign(CENTER,CENTER);
size=20;
textFont(font, size);
text(totalTime, displayWidth*47/70,displayHeight*53/56, displayWidth*4/35, displayHeight*1/35);
fill(reset);
}//End textDraw
