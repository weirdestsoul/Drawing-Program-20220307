import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
Minim minim; 
Boolean pauseTrue=false, stopTrue = false;
int numberOfSongs=5;
int trueNumberOfSongs=numberOfSongs-1;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioPlayer splash;
AudioPlayer scribble;
AudioPlayer crumple;
AudioPlayer erase;
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs]; 
int currentSong = numberOfSongs - numberOfSongs;
void musicSetup () {
   minim = new Minim(this);
  song[currentSong] = minim.loadFile("musicFolder/SomebodyThatIUsedToKnow.mp3");
  song[currentSong+=1] = minim.loadFile("musicFolder/Without Me.mp3");
  song[currentSong+=1] = minim.loadFile("musicFolder/Jetpack Joyride Theme.mp3");
  song[currentSong+=1] = minim.loadFile("musicFolder/[Electro] - Laszlo - Supernova [Monstercat Release].mp3");
  song[currentSong+=1] = minim.loadFile("musicFolder/Megalovania BASS BOOSTED.mp3");
  splash = minim.loadFile("soundEffects/Muddy-Water-Splash-www.fesliyanstudios.com.mp3");
  scribble = minim.loadFile("soundEffects/68885__aboe__scribsht4.wav");
  crumple = minim.loadFile("soundEffects/Crumbling-Paper-3-www.fesliyanstudios.com.mp3");
  erase = minim.loadFile("soundEffects/586466__ldf99__pen-erasing.wav");
  //
  currentSong-=currentSong; 
  for (int i=currentSong; i<song.length; i++) {
  }
}//End musicSetup
//
void musicDraw () {
  if (song[currentSong].isLooping()) println("There are", song[currentSong].loopCount(), "loops left");
  if (song[currentSong].isPlaying() && !song[currentSong].isLooping()) println("Play Once");
  if (song[currentSong].isPlaying()) println("Time elapsed", song[currentSong].position()/1000, "Song Length", song[currentSong].length()/1000 ); //value in milliseconds
  if (!song[currentSong].isPlaying()) {
  if(!song[currentSong].isPlaying() && currentSong <=trueNumberOfSongs && pauseTrue == false && stopTrue == false) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong+=1;
  song[currentSong].play();
  } else if (currentSong == trueNumberOfSongs && !song[currentSong].isPlaying() && pauseTrue==false && stopTrue == false) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong -= currentSong;
  song[currentSong].play();
  } 
  } 
  println(newTime);
}//End musicDraw
//
void musicKeyPressed () {
  if (key=='1' || key=='2' || key=='3' || key=='4' || key=='5' || key=='6' || key=='7' || key=='8' || key=='9') {//looping functions
  String keystr = String.valueOf(key);
  println("Looping", keystr, "times");
  println("Number of Repeats is", keystr);
  int num = int(keystr);
  song[currentSong].loop(num);
  }
  //
  //
  if (key=='l' || key=='L' ) song[currentSong].loop();
  //Alternate Play button
  if ( key=='p' || key=='P' ){ 
  if(song[currentSong].isPlaying()){
  song[currentSong].pause();
  pauseTrue=true;
  } else if (song[currentSong].position()>=song[currentSong].length()-song[currentSong].length()*1/10){ 
  //End of Song Calculation: hardcode 1000 or use formula
  //Alternate formula:song1.length-song1,position <= 3500
  song[currentSong].rewind();
  song[currentSong].play();
  }else {
  song[currentSong].play();
  pauseTrue=false;
  stopTrue=false;
  };//Parameter is in milliseconds from start of audio file to start of playing
  }
  //End play-pause button
  //
  //Forward and reverse button
  if (key=='f' || key=='F') song[currentSong].skip(5000); //Skip forward 3 second
  if (key=='r' || key=='R') song[currentSong].skip(-5000); //Skip backward, or reverse forward 3 second
  //Mute button
  if (key=='m' ||key=='M') {
  if(song[currentSong].isMuted() ) {
  song[currentSong].unmute();
  } else {
    song[currentSong].mute();
  }
}
//
  if(key=='s' || key=='S'){
  if(song[currentSong].isPlaying()) {//Stop Button
  song[currentSong].pause();
  song[currentSong].rewind();
  stopTrue=true;
  }else{
  song[currentSong].rewind();
  }
  }//End stop button
  //
  if (key=='n'|| key=='N') {
  if(song[currentSong].isPlaying() && currentSong < trueNumberOfSongs) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong++;
  song[currentSong].play();
  } else if (currentSong == trueNumberOfSongs && song[currentSong].isPlaying()) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong -= currentSong;
  song[currentSong].play();
  } else if (currentSong == trueNumberOfSongs && !song[currentSong].isPlaying()) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong -= currentSong;
  }else {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong++;
  }
  }
  //
  if (key=='b'|| key=='B') {
  if(song[currentSong].isPlaying() && currentSong >=1) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong-=1;
  song[currentSong].play();
  } else if (currentSong == 0 && song[currentSong].isPlaying()) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong+=numberOfSongs-1;
  song[currentSong].play();
  } else if (currentSong == 0 && !song[currentSong].isPlaying()) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong+=numberOfSongs-1;
  }
  else {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong-=1;
  }
  }
  
}//End musicKeyPressed
//
void musicMousePressed () {
  //Progress Bar Function
  if (mouseX>=displayWidth*16/35 && mouseX<=displayWidth*16/35+progressBarWidth && mouseY>=displayHeight*27/28 && mouseY<=displayHeight*27/28+progressBarHeight){ 
    if(song[currentSong].isPlaying()){
    song[currentSong].play(newTime);
    }
    if(!song[currentSong].isPlaying()){
    song[currentSong].play(newTime);
    song[currentSong].pause();
    }
  }
  //Music Player Buttons
   if(mouseX>=displayWidth*30/35 && mouseX<=displayWidth*34/35 && mouseY>=displayHeight*27/28 && mouseY<=displayHeight*27/28+progressBarHeight) volumeHeld=true;
  //Previous Button
   if(mouseX>=displayWidth*37/70 && mouseX<=displayWidth*37/70+fillButton && mouseY>=displayHeight*50/56 && mouseY<=displayHeight*50/56+fillButton){
       if(song[currentSong].position()<=5000){
       if(song[currentSong].isPlaying() && currentSong >=1) {
        song[currentSong].pause();
        song[currentSong].rewind();
        currentSong-=1;
        song[currentSong].play();
        } else if (currentSong == 0 && song[currentSong].isPlaying()) {
        song[currentSong].pause();
        song[currentSong].rewind();
        currentSong+=numberOfSongs-1;
        song[currentSong].play();
        } else if (currentSong == 0 && !song[currentSong].isPlaying()) {
        song[currentSong].pause();
        song[currentSong].rewind();
        currentSong+=numberOfSongs-1;
        }else {
        song[currentSong].pause();
        song[currentSong].rewind();
        currentSong-=1;
      }
    }
      if(song[currentSong].position()>=5000){
      if(song[currentSong].isPlaying()){
        song[currentSong].rewind();
      }
      if(!song[currentSong].isPlaying()){
      song[currentSong].rewind();
      song[currentSong].pause();
      }
     } 
   }
  //
  //Next Button
  if(mouseX>=displayWidth*43/70 && mouseX<=displayWidth*43/70+fillButton && mouseY>=displayHeight*50/56 && mouseY<=displayHeight*50/56+fillButton){
    if(song[currentSong].isPlaying() && currentSong < trueNumberOfSongs) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong++;
  song[currentSong].play();
  } else if (currentSong == trueNumberOfSongs && song[currentSong].isPlaying()) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong -= currentSong;
  song[currentSong].play();
  } else if (currentSong == trueNumberOfSongs && !song[currentSong].isPlaying()) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong -= currentSong;
  }else {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong++;
  }
  }
  //Loop
if(mouseX>=displayWidth*17/35 && mouseX<=displayWidth*17/35+fillButton && mouseY>=displayHeight*50/56 && mouseY<=displayHeight*50/56+fillButton){
song[currentSong].loop();
}else if(mouseX>=displayWidth*17/35 && mouseX<=displayWidth*17/35+fillButton && mouseY>=displayHeight*50/56 && mouseY<=displayHeight*50/56+fillButton){
song[currentSong].play();}
  //Pause Button
  if(mouseX>=displayWidth*20/35 && mouseX<=displayWidth*20/35+fillButton && mouseY>=displayHeight*50/56 && mouseY<=displayHeight*50/56+fillButton && song[currentSong].isPlaying()){
    song[currentSong].pause();
    pauseTrue=true;
    }else if(mouseX>=displayWidth*20/35 && mouseX<=displayWidth*20/35+fillButton && mouseY>=displayHeight*50/56 && mouseY<=displayHeight*50/56+fillButton && !song[currentSong].isPlaying()){
    song[currentSong].play();
    pauseTrue=false;
}

  
}//End musicMousePressed
