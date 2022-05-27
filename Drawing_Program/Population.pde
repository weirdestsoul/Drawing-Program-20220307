//Global Variables
int strokeReset = 1, noStroke = 0;
color  white = #FFFFFF, lgrey=#8B8B83, dgrey=#585858, resetColour = white, black = 0, quitButtonColour, GUI = #969EA5, blue=#0000FF, red=#FF0000, yellow=#FFE600, green=#2A8917, ygreen=#36FF00, bgreen=#4DAD94, bviolet=#5112C9, violet=#8B12C9, rviolet=#E012BB, rorange=#E03B12, orange=#E07D12, yorange=#E0AA12;
Boolean red1=false, red2=false, rorange1=false, rorange2=false, orange1=false, orange2=false, yorange1=false, yorange2=false, yellow1=false, yellow2=false, ygreen1=false, ygreen2=false, green1=false, green2=false, bgreen1=false, bgreen2=false, blue1=false, blue2=false, bviolet1=false, bviolet2=false, violet1=false, violet2=false, rviolet1=false, rviolet2=false; 
//
void population() {
  drawingSurfaceX = displayWidth*6/35;
  drawingSurfaceY = displayHeight*0;
  drawingSurfaceWidth = displayWidth*29/35;
  drawingSurfaceHeight = displayHeight*6/7;
  drawingDiameter = displayHeight*1/100;
  quitButtonX = displayWidth*9/10;
  quitButtonY = displayHeight*0;
  quitButtonWidth = displayWidth*1/10; // 2/20=1/10
  quitButtonHeight = displayHeight*1/20;
  secondTextX = displayWidth*4/35;
  secondTextY = displayWidth*9/35;
  secondTextWidth = displayWidth*1/35;
  secondTextHeight = displayWidth*1/35;
  fillButton = displayWidth*1/35;
  strokeWidth = displayWidth*1/37;
  strokeHeight = displayWidth*2/37;
  shapeWidth = displayWidth*1/37;
  shapeHeight = displayWidth*2/37;
}//End population
