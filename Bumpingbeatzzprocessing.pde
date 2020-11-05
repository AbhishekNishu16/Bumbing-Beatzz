//Bumping beatzz
//DIGF-6037-001 Creation & Computation 
//Inspired by Nicholas Puckett example on Capinput sensor

//Clinton & Nishu

import processing.video.*;

Movie base;
Movie video;
Movie video1;
Movie video2;
Movie video3;
Movie video4;
Movie video5;
Movie video6;
Movie video7;
Movie video8;
Movie video9;
Movie video10;
Movie video11;

import processing.serial.*; //import the Processing serial library

import processing.sound.*; //import the Processing sound library
SoundFile file;
SoundFile file1;
SoundFile file2;
SoundFile file3;
SoundFile file4;
SoundFile file5;
SoundFile file6;
SoundFile file7;
SoundFile file8;
SoundFile file9;
SoundFile file10;
SoundFile file11;
Serial myPort;              

 
int totalPins =12;
int pinValues[] = new int[totalPins];
int pinValuesPrev[] = new int[totalPins];
int margin = 50;

 

void setup() {
  size(960,540);
  
 
  
//Video Files

base=new Movie(this,"Background.mp4");
video=new Movie(this, "Set 1.0.mp4");
video1=new Movie(this, "Set 1.1.mp4");
video2=new Movie(this, "Set 1.2.mp4");
video3=new Movie(this, "Set 1.3.mp4");
video4=new Movie(this, "Set 3.2.mp4");
video5=new Movie(this, "Set 3.0.mp4");
video6=new Movie(this, "Set 2.1.mp4");
video7=new Movie(this, "Set 2.0.mp4");
video8=new Movie(this, "Set 2.2.mp4");
video9=new Movie(this, "Set 2.3.mp4");
video10=new Movie(this, "Set 3.1.mp4");
video11=new Movie(this, "Set 3.3.mp4");
base.loop();
video.loop();
video1.loop();
video2.loop();
video3.loop();
video4.loop();
video5.loop();
video6.loop();
video7.loop();
video8.loop();
video9.loop();
video10.loop();
video11.loop();

  
  
  //Audio Files
  file = new SoundFile(this, "606-kick1.wav");
  file1 = new SoundFile(this, "BASSFNK2.aif");
  file2 = new SoundFile(this, "BELL1.aif");
  file3 = new SoundFile(this, "biab_electro_snare_1.wav");
  file4 = new SoundFile(this, "T6-Hats-11.wav");
  file5 = new SoundFile(this, "i_need_a_dj.aif");
  file6 = new SoundFile(this, "female-mmm.wav");
  file7 = new SoundFile(this, "dj-mustard-Chant-1.wav");
  file8 = new SoundFile(this, "vocal-scratch.aif");
  file9 = new SoundFile(this, "dj-mustard-808-Cow-Bell.wav");
  file10 = new SoundFile(this, "acid-jazz-trumpet-12.wav");
  file11 = new SoundFile(this, "jazz_hit.aif");
  

  
 
  
  printArray(Serial.list());

  String portName = Serial.list()[3];
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n');
}

void movieEvent(Movie m){
  m.read();
}
 

void draw() 
{
image(base,0,0);
  textSize(70);
  text("BEATZZ", width/2, height/2);
  fill(20);
  textAlign(CENTER);
  //noFill();
  //ellipse(300,300,30,30);
  //stroke(255);
  
  for(int i = 0;i<pinValues.length;i++)
  {
     //Pin 0
     if(pinValues[i]==1)
     {
      image(video,0,0);
     } 
     else
     {
      noFill(); 
     }
     
     
     //Pin 1
     if(pinValues[i]==2)
     {
      image(video1,0,0);
     } 
     else
     {
      noFill(); 
     }
     
     
     //Pin 2
     if(pinValues[i]==3)
     {
      fill(255); 
      image(video2,0,0);
     } 
     else
     {
      noFill(); 
     }
     
     
     //Pin 3
     if(pinValues[i]==4)
     {
      fill(255); 
      image(video3,0,0);
     } 
     else
     {
      noFill(); 
     }
     
     
     //Pin 4
     if(pinValues[i]==5)
     {
      fill(255); 
      image(video4,0,0);
     } 
     else
     {
      noFill(); 
     }
     
     
     //Pin 5
     if(pinValues[i]==6)
     {
      fill(255); 
      image(video5,0,0);
     } 
     else
     {
      noFill(); 
     }
     
     
     
    //Pin 6
     if(pinValues[i]==7)
     {
      fill(255); 
      image(video6,0,0);
     } 
     else
     {
      noFill(); 
     }
     
     
     
     //Pin 7
     if(pinValues[i]==8)
     {
      fill(255); 
      image(video7,0,0);
     } 
     else
     {
      noFill(); 
     }
     
     
     
       //Pin 8
     if(pinValues[i]==8)
     {
      fill(255); 
      image(video8,0,0);
     } 
     else
     {
      noFill(); 
     }
     
     
     
       //Pin 9
     if(pinValues[i]==10)
     {
      fill(255); 
      image(video9,0,0);
     } 
     else
     {
      noFill(); 
     }
     
     
     
     //Pin 10
     if(pinValues[i]==11)
     {
      fill(255); 
      image(video10,0,0);
     } 
     else
     {
      noFill(); 
     }
     
     
     
     //Pin 11
     if(pinValues[i]==12)
     {
      fill(255); 
      image(video11,0,0);
     } 
     else
     {
      noFill(); 
     }
     //ellipse(margin+(i*(width-(margin*2))/pinValues.length),height/2,30,30);
     
     
     
   //Pin0 audio
   if((pinValues[i]==1)&&(pinValuesPrev[i]==0))
   {
     file.play();
   }
   
   
   //Pin1 audio
    if((pinValues[i]==2)&&(pinValuesPrev[i]==0))
   {
     file1.play();
   }
   
   
    //Pin2 audio
    if((pinValues[i]==3)&&(pinValuesPrev[i]==0))
   {
     file2.play();
   }
   
   
    //Pin3 audio
    if((pinValues[i]==4)&&(pinValuesPrev[i]==0))
   {
     file3.play();
   }
   
   
    //Pin4 audio
    if((pinValues[i]==5)&&(pinValuesPrev[i]==0))
   {
     file4.play();
   }
   
   
    //Pin5 audio
    if((pinValues[i]==6)&&(pinValuesPrev[i]==0))
   {
     file5.play();
   }
   
   
    //Pin6 audio
    if((pinValues[i]==7)&&(pinValuesPrev[i]==0))
   {
     file6.play();
   }
   
   
   //Pin7 audio
    if((pinValues[i]==8)&&(pinValuesPrev[i]==0))
   {
     file7.play();
   }
   
   
    //Pin8 audio
    if((pinValues[i]==9)&&(pinValuesPrev[i]==0))
   {
     file8.play();
   }
   
   
    //Pin9 audio
    if((pinValues[i]==10)&&(pinValuesPrev[i]==0))
   {
     file9.play();
   }
   
   
    //Pin10 audio
    if((pinValues[i]==11)&&(pinValuesPrev[i]==0))
   {
     file10.play();
   }
   
   
    //Pin12 audio
    if((pinValues[i]==12)&&(pinValuesPrev[i]==0))
   {
     file11.play();
   }
   
   
   
 pinValuesPrev[i] = pinValues[i];   
     
  }
}

 
void serialEvent(Serial myPort) {
 
  String myString = myPort.readStringUntil('\n');
  if (myString != null) {
    
  myString = trim(myString);
  pinValues = int(split(myString,','));
    
  }
  
  printArray(pinValues);
}
