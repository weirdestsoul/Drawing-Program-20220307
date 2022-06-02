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
}//End drawingTools
