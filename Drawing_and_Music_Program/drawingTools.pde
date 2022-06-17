//Global Variables
//
void drawingTools() {
  strokeWeight(lineStroke);
  stroke(toolColour);
  fill(toolColour);
if(drawLine==true){ 
  if (drawTool==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight)
 line( mouseX, mouseY, pmouseX, pmouseY );
 frameRate = 240;
}
//
if(drawCircle==true){
  if (drawTool==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) 
  ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter );//Circle drawing tool
  frameRate = 50;
}
//
if(drawTriangle==true){
  if (drawTool==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) 
  triangle ( mouseX, mouseY-displayWidth*1/30, mouseX+displayWidth*1/60, mouseY-displayWidth*1/60, mouseX-displayWidth*1/60, mouseY-displayWidth*1/60 );//Triangle drawing tool
  frameRate = 50;
}
//
if(drawRectangle==true){
  if (drawTool==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) 
  rect ( mouseX-displayWidth*1/40, mouseY-displayWidth*1/80, displayWidth*1/20, displayWidth*1/40 );//Rectangle drawing tool
  frameRate = 50;
}
}//End drawingTools
