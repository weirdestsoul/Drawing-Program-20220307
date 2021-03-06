//Global Variables
Boolean drawTool=false, drawLine = true, eraser=false, paper=false, drawCircle = false, drawTriangle=false, drawRectangle=false, volumeHeld=false, loopF = false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float drawingDiameter;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
float progressBarHeight, progressBarWidth, setTime, volume, volumeButton;
int minute1, minute2, seconds1, seconds2, seconds3;
int strokeReset = 2, noStroke = 0, reset = 1, lineStroke, frameRate;
int newTime;
String currentTime, totalTime;
color backgroundColour, toolColour, white = #FFFFFF, lgrey=#8B8B83, dgrey=#585858, resetColour = white, black = 0, quitButtonColour, GUI = #969EA5, blue=#0000FF, red=#FF0000, yellow=#FFE600, green=#2A8917, ygreen=#36FF00, bgreen=#4DAD94, bviolet=#5112C9, violet=#8B12C9, rviolet=#E012BB, rorange=#E03B12, orange=#E07D12, yorange=#E0AA12;
//
void population() {
  frameRate = 240;
  volumeButton=0.5;
  drawingSurfaceX = displayWidth*6/35;
  drawingSurfaceY = displayHeight*0;
  drawingSurfaceWidth = displayWidth*30/35;
  drawingSurfaceHeight = displayHeight*6/7;
  drawingDiameter = displayHeight*1/50;
  quitButtonX = displayWidth*39/40;
  quitButtonY = displayHeight*0;
  quitButtonWidth = displayWidth*1/40; // 2/20=1/10
  quitButtonHeight = displayWidth*1/40;
  secondTextX = displayWidth*4/35;
  secondTextY = displayWidth*9/35;
  secondTextWidth = displayWidth*1/37;
  secondTextHeight = displayWidth*1/37;
  fillButton = displayWidth*1/35;
  strokeWidth = displayWidth*1/37;
  strokeHeight = displayWidth*2/37;
  shapeWidth = displayWidth*1/37;
  shapeHeight = displayWidth*2/37;
  backgroundColour=white;
  toolColour=black;
  lineStroke=2;
  progressBarHeight=displayHeight*1/200;
  progressBarWidth=displayWidth*9/35;
}//End population

void populationDraw() {
  setTime =  float(mouseX-displayWidth*16/35) / float(displayWidth*9/35);
  newTime = int(setTime*song[currentSong].length());
  volume = float(mouseX-displayWidth*33/38);
  if(volumeHeld==true){
    volumeButton = float(mouseX-displayWidth*30/35) / float(displayWidth*4/35); 
    song[currentSong].setGain(volume);
  }
  //
  seconds1=song[currentSong].position()/1000;
  minute1=song[currentSong].position()/1000/60;
  seconds2= seconds1-(minute1*60);
  seconds3=song[currentSong].length()/10000;
  minute2=song[currentSong].length()/1000/60;
  //
  if(seconds2<10){
  currentTime= minute1+":"+"0"+seconds2;
  }else{
  currentTime= minute1+":"+seconds2;
  }
  totalTime= minute2+":"+seconds3;
  //
  frameRate(frameRate);
}//End populationDraw
