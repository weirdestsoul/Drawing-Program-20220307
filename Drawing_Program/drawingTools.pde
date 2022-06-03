//Global Variables
//
void drawingTools() {
  strokeWeight(lineStroke);
  stroke(toolColour);
  fill(toolColour);
if(drawLine==true){ 
  if (drawTool==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight)
 
 line( mouseX, mouseY, pmouseX, pmouseY );
  
}
//
if(drawCircle==true){
  if (drawTool==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) 
  ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter );//Circle drawing tool
}
//
if(drawTriangle==true){
  if (drawTool==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) 
  triangle ( mouseX, mouseY-displayWidth*1/30, mouseX+displayWidth*1/60, mouseY-displayWidth*1/60, mouseX-displayWidth*1/60, mouseY-displayWidth*1/60 );//Circle drawing tool
}
//
if(drawRectangle==true){
  if (drawTool==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) 
  rect ( mouseX-displayWidth*1/40, mouseY-displayWidth*1/80, displayWidth*1/20, displayWidth*1/40 );//Circle drawing tool
}
}//End drawingTools
