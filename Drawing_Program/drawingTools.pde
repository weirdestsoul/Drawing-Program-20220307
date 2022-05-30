//Global Variables
//
void drawingTools() {
 
if (drawTool==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight){
 stroke(toolColour);
 line( mouseX, mouseY, pmouseX, pmouseY );
}
if (drawCircle==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter ); //Circle drawing tool
}//End drawingTools
