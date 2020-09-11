  int startX = 0;
  int startY = 125;
  int endX = 200;
  int endY = 200;
  int bkR = 0;
  int bkG = 0;
  int bkB = 0;
void setup()
{
   size(300,300);
  strokeWeight(5);
  background(bkR,bkG,bkB); //EDIT BACKGROUND WITH KEYS R G B keys to edit rgb 
  //W for white Delete or Backspace for black Any key for clear
}
void draw() //this is a loop
{
  //random rgb
int R = (int)(Math.random() * 256);
int G = (int)(Math.random()* 256);
int B = (int)(Math.random()* 256);
  stroke(R, G, B);
  
  //Fading effect rather than instant
if (endX < 300)
  {
  endX = startX + (int)(Math.random()*10);
  endY = startY + (int)((Math.random()*18)-9);
  line(startX, startY, endX, endY);
  startX = endX;
  startY= endY;
  fill (bkR,bkG,bkB, 5);
  rect(-10,-10,400,400);
  delay(10); //delay in milliseconds for "framerate"
  } 
}


void mousePressed(){ // click mouse to add another lightning bolt
  startX = 0;
  startY = (int)((Math.random() * 50)+125); //random start on y position
  endX = 200;
  endY = 200;
}

// background changer
void keyPressed(){
  if(key == 'r' || key == 'R'){
  bkR = bkR + 5;
  }
    if(bkR>255){
    bkR = 0;
    }
  if(key == 'g' || key == 'G'){
  bkG = bkG + 5;
  }
    if(bkG>255){
    bkG = 0;
    }
  if(key == 'b' || key == 'B'){
  bkB = bkB + 5;
  }
    if(bkB>255){
    bkB = 0;
    }
    //white replace
  if(key == 'w' || key == 'W'){
  bkR = 255;
  bkG = 255;
  bkB = 255;
  }
  if(key == BACKSPACE || key == DELETE){
  bkR = 0;
  bkG = 0;
  bkB = 0;
  }
    
  background(bkR,bkG,bkB);
  
}
