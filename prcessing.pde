import processing.serial.*;
Serial serial;  

int senserVal;

//PImage img ;
//PImage imge ;
//PImage mage ;
void setup()
{ 
  background(122, 192, 200);

  size(1624, 800);

  serial = new Serial(this, "COM6", 9600);


  //img=loadImage("flower1.jpg");
  //imge=loadImage("flower2.jpg");
  //mage=loadImage("flower3.jpg");
}
void draw() {
  senserVal=serial.read();
  
  
  
 if(senserVal<30){
  textSize(32);  
  text("Master,please water your flowers ", 300, 250);
  text("O",1180,525);
  text("humidity/%",1203,100);
  text("60",1160,280);
  text("100",1140,200);
}
  line(1000,0,1000,800);
  line(1200,270,1204,270);
  line(1200,200,1204,200);
  line(1200,100,1200,750);
  line(1012,500,1612,500);
line(1200,100,1194,120);
line(1200,100,1206,120);
rect(1240,497,60,-senserVal*4);
rect(0,620,1000,4);
  stroke(227, 157, 220);

    bezier(181, 203, 140, 125, 235, 213, 185, 199);

    bezier(224, 196, 176, 135, 221, 142, 232, 175);


    noStroke();

    fill(122, 192, 200);

    rect(0, 375, 540, 240);

    fill(0);

    ellipse(213, 472, 50, 16);

    ellipse(300, 473, 50, 15);

    fill(243, 199, 224);

    rect(194, 404, 13, 63);

    rect(280, 404, 13, 63);

    fill(249, 102, 110);

    bezier(306, 404, 314, 273, 183, 195, 175, 404);


    fill(255, 181, 230);

    ellipse(226, 238, 114, 120);

    bezier(230, 175, 392, 118, 285, 190, 250, 250);

    bezier(224, 182, 402, 132, 302, 193, 248, 250);


    fill(255);

    stroke(225, 162, 198);

    strokeWeight(3);

    ellipse(210, 218, 23, 23);

    ellipse(241, 198, 23, 23);


    fill(0);

    noStroke();

    ellipse(208, 219, 10, 11);

    ellipse(239, 200, 11, 12);


    stroke(203, 101, 166);

    noFill();

    strokeWeight(3);

    bezier(216, 256, 212, 255, 249, 292, 261, 242);


    noStroke();

    fill(254, 151, 222);

    ellipse(195, 253, 29, 35);


    stroke(247, 190, 238);

    noFill();

    strokeWeight(7);

    line(189, 315, 142, 362);

    line(278, 301, 328, 362);

    line(157, 346, 136, 354);

    line(158, 349, 156, 363);


    bezier(132, 395, 227, 353, 86, 451, 177, 367);


    line(318, 349, 318, 367);

    line(319, 349, 337, 352);


    fill(254, 183, 232);

    stroke(253, 150, 219);

    ellipse(311, 168, 27, 35);

    fill(218, 122, 183);

    noStroke();

    ellipse(307, 172, 9, 9);

    ellipse(317, 168, 9, 9);


  //textSize(32);
  //text("Master,please press my hand ", 300, 250);
}