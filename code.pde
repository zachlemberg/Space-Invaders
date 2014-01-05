import processing.core.*;
int mv = 1;
int drop;
int boom;
int timer;
int once;
int fire = 1;
int beam1;
int beam2;
int beam3;
int beam4;
int beam5;
//space invaders (project closed)
int beam6;
int beam7;
int beam8;
int beam9;
int bmvr1;
int bmvr2;
int bmvr3;
int bmvr4;
int bmvr5;
int bmvr6;
int bmvr7;
int bmvr8;
int bmvr9;
int beammv1;
int beammv2;
int beammv3;
int beammv4;
int beammv5;
int beammv6;
int beammv7;
int beammv8;
int beammv9;
int display = 0;
int yposition;
int xposition;
int powerup = 0;
int fast = 390;
int fast1 = 390;
int fast2 = 390;
int fast3 = 390;
int fast4 = 390;
int sideeast = -50;
int sidewest = 323;
int menu = 1;
int clock = 0;
int level = 1;
int change = 1;
int gun = 0;
int gun1 = 0;
int gun2 = 0;
int gun3 = 0;
int gun4 = 0;
int time = 0;
int place = 300;
int place1 = 300;
int place2 = 300;
int place3 = 300;
int place4 = 300;
int mvr = 50;
int score = 0;
int down = 10;
int live = 3;
int timecheck;
int open = 1;
int check = 1;
int lie = 1;
int levelbreak = 2000; // 2 seconds in milliseconds
boolean inv1 = true;
boolean inv2 = true;
boolean inv3 = true;
boolean inv4 = true;
boolean inv5 = true;
boolean inv6 = true;
boolean inv7 = true;
boolean inv8 = true;
boolean inv9 = true;
PFont f;

void setup() {
  size(500,500);
}
void draw(){
  if (menu == 1) {
    background(0);
    strokeWeight(3);
    stroke(200);
    line(100,100,400,100);
    line(100,100,100,450);
    line(100,450,400,450);
    line(400,100,400,450);
    fill(0,0,0);
    strokeWeight(2);
    rect(175,150,150,50);
    rect(175,250,150,50);
    rect(175,350,150,50);
    rect(460,10,2,2);
    rect(45,295,2,2);
    rect(300,490,2,2);
    rect(410,110,2,2);
    rect(78,120,2,2);
    rect(463,400,2,2);
    rect(250,320,2,2);
    f = createFont("GulimChe",36,true);
    textFont(f,24);
    fill(250);
    text("PLAY",225,185);
    text("CONTROLS",207,285);
    text("nothing",208,385);
    f = createFont("MS",36,true);
    textFont(f,48);
    fill(150);
    text("SPACE INVADERS",42,75);
  }
  else if (menu == 6) {
    background(0);
    if (once == 1) {
      timer = second();
      once = 0;
    }
    f = createFont("MS",48,true);
    textFont(f,48);
    fill(250,0,0);
    text("GAME OVER",120,200);
    text("SCORE: " + score,150,320);
    if (second() >= (timer + 5)) {
      menu = 1;
      level = 1;
      fast = 0;
      fast1 = 0;
      fast2 = 0;
      fast3 = 0;
      fast4 = 0;
      sideeast = -50;
      sidewest = 323;
      open = 1;
      lie = 1;
    }
  }
  else if (menu == 3) {
    background(0);
    strokeWeight(3);
    stroke(200);
    line(100,100,400,100);
    line(100,100,100,450);
    line(100,450,400,450);
    line(400,100,400,450);
    fill(0,0,0);
    strokeWeight(2);
    rect(175,300,150,50);
    rect(460,10,2,2);
    rect(45,295,2,2);
    rect(300,490,2,2);
    rect(410,110,2,2);
    rect(78,120,2,2);
    rect(463,400,2,2);
    rect(250,320,2,2);
    f = createFont("MS",36,true);
    textFont(f,48);
    fill(150);
    text("SPACE INVADERS",42,75);
    f = createFont("GulimChe",24,true);
    textFont(f,36);
    fill(250);
    text("CONTROLS",175,145);
    text("MENU",215,340);
    textFont(f,16);
    text("Mouse controls the position of the",120,185);
    text("tank and the mouse Button controls", 120,210);
    text("the firing of the tank. Rest of",120,235);
    text("the buttons are self-explanatory",120,260);
    text("Have fun playing space invaders.",120,285);
    text("Programmed by Zach Lemberg",145,400);
  }
  else if (menu == 4) {
    background(0);
    stroke(200);
    fill(200,200,200);
    strokeWeight(2);
    rect(460,10,2,2);
    rect(45,295,2,2);
    rect(300,490,2,2);
    rect(410,110,2,2);
    rect(78,120,2,2);
    rect(463,400,2,2);
    rect(250,320,2,2);
    noStroke();
    fill(250,0,0);
    if (beam1 == 1) {
      beammv1 = mv + 50;
      fill(10,70,100);
      rect(beammv1,bmvr1,10,10);
    }
    if (beam2 == 1) {
      beammv2 = mv + 100;
      fill(10,70,200);
      rect(beammv2,bmvr2,10,10);
    }
    if (beam3 == 1) {
      beammv3 = mv + 150;
      fill(10,70,200);
      rect(beammv3,bmvr3,10,10);
    }
    if (beam4 == 1) {
      beammv4 = mv + 50;
      fill(10,70,200);
      rect(beammv4,bmvr4,10,10);
    }
    if (beam5 == 1) {
      beammv5 = mv + 100;
      fill(10,70,200);
      rect(beammv5,bmvr5,10,10);
    }
    if (beam6 == 1) {
      beammv6 = mv + 150;
      fill(10,70,200);
      rect(beammv6,bmvr6,10,10);
    }
    if (beam7 == 1) {
      beammv7 = mv + 50;
      fill(10,70,200);
      rect(beammv7,bmvr7,10,10);
    }
    if (beam8 == 1) {
      beammv8 = mv + 100;
      fill(10,70,200);
      rect(beammv8,bmvr8,10,10);
    }
    if (beam9 == 1) {
      beammv9 = mv + 150;
      fill(10,70,200);
      rect(beammv9,bmvr9,10,10);
    }
    if (inv1 == true) {
      fill(250,0,0);
      rect(55 + mv,mvr,3,3);
      rect(50 + mv,10 + mvr,3,8);
      rect(53 + mv,8 + mvr,3,5);
      rect(55 + mv,5 + mvr,3,13);
      rect(58 + mv,3 + mvr,3,5);
      rect(58 + mv,10 + mvr,3,5);
      rect(58 + mv,18 + mvr,5,3);
      rect(60 + mv,5 + mvr,3,10);
      rect(63 + mv,5 + mvr,3,10);
      rect(65 + mv,5 + mvr,3,10);
      rect(65 + mv,18 + mvr,5,3);
      rect(68 + mv,3 + mvr,3,5);
      rect(68 + mv,10 + mvr,3,5);
      rect(70 + mv,mvr,3,3);
      rect(70 + mv,5 + mvr,3,13);
      rect(73 + mv,8 + mvr,3,5);
      rect(75 + mv,10 + mvr,3,8);
    }
    if (inv2 == true) {
      rect(105 + mv,mvr,3,3);
      rect(100 + mv,10 + mvr,3,8);
      rect(103 + mv,8 + mvr,3,5);
      rect(105 + mv,5 + mvr,3,13);
      rect(108 + mv,3 + mvr,3,5);
      rect(108 + mv,10 + mvr,3,5);
      rect(108 + mv,18 + mvr,5,3);
      rect(110 + mv,5 + mvr,3,10);
      rect(113 + mv,5 + mvr,3,10);
      rect(115 + mv,5 + mvr,3,10);
      rect(115 + mv,18 + mvr,5,3);
      rect(118 + mv,3 + mvr,3,5);
      rect(118 + mv,10 + mvr,3,5);
      rect(120 + mv,mvr,3,3);
      rect(120 + mv,5 + mvr,3,13);
      rect(123 + mv,8 + mvr,3,5);
      rect(125 + mv,10 + mvr,3,8);
    }
    if (inv3 == true) {
      rect(155 + mv,mvr,3,3);
      rect(150 + mv,10 + mvr,3,8);
      rect(153 + mv,8 + mvr,3,5);
      rect(155 + mv,5 + mvr,3,13);
      rect(158 + mv,3 + mvr,3,5);
      rect(158 + mv,10 + mvr,3,5);
      rect(158 + mv,18 + mvr,5,3);
      rect(160 + mv,5 + mvr,3,10);
      rect(163 + mv,5 + mvr,3,10);
      rect(165 + mv,5 + mvr,3,10);
      rect(165 + mv,18 + mvr,5,3);
      rect(168 + mv,3 + mvr,3,5);
      rect(168 + mv,10 + mvr,3,5);
      rect(170 + mv,mvr,3,3);
      rect(170 + mv,5 + mvr,3,13);
      rect(173 + mv,8 + mvr,3,5);
      rect(175 + mv,10 + mvr,3,8);
    }
    if (inv4 == true) {
      rect(55 + mv,50 + mvr,3,3);
      rect(50 + mv,60 + mvr,3,8);
      rect(53 + mv,58 + mvr,3,5);
      rect(55 + mv,55 + mvr,3,13);
      rect(58 + mv,53 + mvr,3,5);
      rect(58 + mv,60 + mvr,3,5);
      rect(58 + mv,68 + mvr,5,3);
      rect(60 + mv,55 + mvr,3,10);
      rect(63 + mv,55 + mvr,3,10);
      rect(65 + mv,55 + mvr,3,10);
      rect(65 + mv,68 + mvr,5,3);
      rect(68 + mv,53 + mvr,3,5);
      rect(68 + mv,60 + mvr,3,5);
      rect(70 + mv,50 +mvr,3,3);
      rect(70 + mv,55 + mvr,3,13);
      rect(73 + mv,58 + mvr,3,5);
      rect(75 + mv,60 + mvr,3,8);
    }
    if (inv5 == true) {
      rect(105 + mv,50 + mvr,3,3);
      rect(100 + mv,60 + mvr,3,8);
      rect(103 + mv,58 + mvr,3,5);
      rect(105 + mv,55 + mvr,3,13);
      rect(108 + mv,53 + mvr,3,5);
      rect(108 + mv,60 + mvr,3,5);
      rect(108 + mv,68 + mvr,5,3);
      rect(110 + mv,55 + mvr,3,10);
      rect(113 + mv,55 + mvr,3,10);
      rect(115 + mv,55 + mvr,3,10);
      rect(115 + mv,68 + mvr,5,3);
      rect(118 + mv,53 + mvr,3,5);
      rect(118 + mv,60 + mvr,3,5);
      rect(120 + mv,50 +mvr,3,3);
      rect(120 + mv,55 + mvr,3,13);
      rect(123 + mv,58 + mvr,3,5);
      rect(125 + mv,60 + mvr,3,8);
    }
    if (inv6 == true) {
      rect(155 + mv,50 + mvr,3,3);
      rect(150 + mv,60 + mvr,3,8);
      rect(153 + mv,58 + mvr,3,5);
      rect(155 + mv,55 + mvr,3,13);
      rect(158 + mv,53 + mvr,3,5);
      rect(158 + mv,60 + mvr,3,5);
      rect(158 + mv,68 + mvr,5,3);
      rect(160 + mv,55 + mvr,3,10);
      rect(163 + mv,55 + mvr,3,10);
      rect(165 + mv,55 + mvr,3,10);
      rect(165 + mv,68 + mvr,5,3);
      rect(168 + mv,53 + mvr,3,5);
      rect(168 + mv,60 + mvr,3,5);
      rect(170 + mv,50 +mvr,3,3);
      rect(170 + mv,55 + mvr,3,13);
      rect(173 + mv,58 + mvr,3,5);
      rect(175 + mv,60 + mvr,3,8);
    }
    if (inv7 == true) {
      rect(55 + mv,100 + mvr,3,3);
      rect(50 + mv,110 + mvr,3,8);
      rect(53 + mv,108 + mvr,3,5);
      rect(55 + mv,105 + mvr,3,13);
      rect(58 + mv,103 + mvr,3,5);
      rect(58 + mv,110 + mvr,3,5);
      rect(58 + mv,118 + mvr,5,3);
      rect(60 + mv,105 + mvr,3,10);
      rect(63 + mv,105 + mvr,3,10);
      rect(65 + mv,105 + mvr,3,10);
      rect(65 + mv,118 + mvr,5,3);
      rect(68 + mv,103 + mvr,3,5);
      rect(68 + mv,110 + mvr,3,5);
      rect(70 + mv,100 +mvr,3,3);
      rect(70 + mv,105 + mvr,3,13);
      rect(73 + mv,108 + mvr,3,5);
      rect(75 + mv,110 + mvr,3,8);
    }
    if (inv8 == true) {
      rect(105 + mv,100 + mvr,3,3);
      rect(100 + mv,110 + mvr,3,8);
      rect(103 + mv,108 + mvr,3,5);
      rect(105 + mv,105 + mvr,3,13);
      rect(108 + mv,103 + mvr,3,5);
      rect(108 + mv,110 + mvr,3,5);
      rect(108 + mv,118 + mvr,5,3);
      rect(110 + mv,105 + mvr,3,10);
      rect(113 + mv,105 + mvr,3,10);
      rect(115 + mv,105 + mvr,3,10);
      rect(115 + mv,118 + mvr,5,3);
      rect(118 + mv,103 + mvr,3,5);
      rect(118 + mv,110 + mvr,3,5);
      rect(120 + mv,100 +mvr,3,3);
      rect(120 + mv,105 + mvr,3,13);
      rect(123 + mv,108 + mvr,3,5);
      rect(125 + mv,110 + mvr,3,8);
    }
    if (inv9 == true) {
      rect(155 + mv,100 + mvr,3,3);
      rect(150 + mv,110 + mvr,3,8);
      rect(153 + mv,108 + mvr,3,5);
      rect(155 + mv,105 + mvr,3,13);
      rect(158 + mv,103 + mvr,3,5);
      rect(158 + mv,110 + mvr,3,5);
      rect(158 + mv,118 + mvr,5,3);
      rect(160 + mv,105 + mvr,3,10);
      rect(163 + mv,105 + mvr,3,10);
      rect(165 + mv,105 + mvr,3,10);
      rect(165 + mv,118 + mvr,5,3);
      rect(168 + mv,103 + mvr,3,5);
      rect(168 + mv,110 + mvr,3,5);
      rect(170 + mv,100 + mvr,3,3);
      rect(170 + mv,105 + mvr,3,13);
      rect(173 + mv,108 + mvr,3,5);
      rect(175 + mv,110 + mvr,3,8);
    }
    if (gun1 == 1) {
      fill(200,200,0);
      ellipse(place1,fast1,10,60);
    }
    if (gun == 1) {
      fill(200,200,0);
      ellipse(place,fast,10,60);
    }
    if (gun2 == 1) {
      fill(200,200,0);
      ellipse(place2,fast2,10,60);
    }
    if (gun3 == 1) {
      fill(200,200,0);
      ellipse(place3,fast3,10,60);
    }
    if (gun4 == 1) {
      fill(200,200,0);
      ellipse(place4,fast4,10,60);
    }
    fill(100,100,100);
    f = createFont("Arial",24,true);
    textFont(f, 24);
    text("Score: " + score,20,490);
    text("Lives: ",150,490);
    fill(210,210,210);
    rect(340,320,160,200,15);
    fill(0,0,0);
    textFont(f,60);
    fill(20,20,200);
    text("PAUSE",150,170);
    fill(0,20,20);
    rect(350,340,140,40,15);
    fill(210,210,210);
    f = createFont("MS",36,true);
    textFont(f,24);
    text("UNPAUSE",360,365);
    fill(0,20,20);
    rect(370,410,100,40,15);
    fill(210,210,210);
    text("QUIT",390,435);
    if (live == 1) {
      fill(0,250,0);
      rectMode(CENTER);
      rect(230,485,30,20,5);
      rect(230,473,10,5);
      fill(100,100,100);
      ellipse(230,494,6,6);
      ellipse(233,494,6,6);
      ellipse(236,494,6,6);
      ellipse(238,494,6,6);
      ellipse(227,494,6,6);
      ellipse(224,494,6,6);
      ellipse(222,494,6,6);
      rectMode(CORNER);
    }
    else if (live == 2) {
      fill(0,250,0);
      rectMode(CENTER);
      rect(230,485,30,20,5);
      rect(230,473,10,5);
      fill(100,100,100);
      ellipse(230,494,6,6);
      ellipse(233,494,6,6);
      ellipse(236,494,6,6);
      ellipse(238,494,6,6);
      ellipse(227,494,6,6);
      ellipse(224,494,6,6);
      ellipse(222,494,6,6);
      fill(0,250,0);
      rect(270,485,30,20,5);
      rect(270,473,10,5);
      fill(100,100,100);
      ellipse(270,494,6,6);
      ellipse(273,494,6,6);
      ellipse(276,494,6,6);
      ellipse(278,494,6,6);
      ellipse(267,494,6,6);
      ellipse(264,494,6,6);
      ellipse(262,494,6,6);
      rectMode(CORNER);
    }
    else if (live == 3) {
      fill(0,250,0);
      rectMode(CENTER);
      rect(230,485,30,20,5);
      rect(230,473,10,5);
      fill(100,100,100);
      ellipse(230,494,6,6);
      ellipse(233,494,6,6);
      ellipse(236,494,6,6);
      ellipse(238,494,6,6);
      ellipse(227,494,6,6);
      ellipse(224,494,6,6);
      ellipse(222,494,6,6);
      fill(0,250,0);
      rect(270,485,30,20,5);
      rect(270,473,10,5);
      fill(100,100,100);
      ellipse(270,494,6,6);
      ellipse(273,494,6,6);
      ellipse(276,494,6,6);
      ellipse(278,494,6,6);
      ellipse(267,494,6,6);
      ellipse(264,494,6,6);
      ellipse(262,494,6,6);
      fill(0,250,0);
      rect(310,485,30,20,5);
      rect(310,473,10,5);
      fill(100,100,100);
      ellipse(310,494,6,6);
      ellipse(313,494,6,6);
      ellipse(316,494,6,6);
      ellipse(318,494,6,6);
      ellipse(307,494,6,6);
      ellipse(304,494,6,6);
      ellipse(302,494,6,6);
      rectMode(CORNER);
    }
  }
  else if (menu == 2) {
    background(0);
    fill(100,100,100);
    f = createFont("Arial",24,true);
    textFont(f, 24);
    text("Score: " + score,20,490);
    text("Lives: ",150,490);
    stroke(250);
    strokeWeight(2);
    rect(460,10,2,2);
    rect(45,295,2,2);
    rect(300,490,2,2);
    rect(410,110,2,2);
    rect(78,120,2,2);
    rect(463,400,2,2);
    rect(250,320,2,2);
    fill(0,0,0);
    rect(430,470,60,20);
    fill(200,200,200);
    textFont(f,12);
    text("PAUSE", 440,485);
    noStroke();
    fill(250,0,0);
    if (live == 1) {
      fill(0,250,0);
      rectMode(CENTER);
      rect(230,485,30,20,5);
      rect(230,473,10,5);
      fill(100,100,100);
      ellipse(230,494,6,6);
      ellipse(233,494,6,6);
      ellipse(236,494,6,6);
      ellipse(238,494,6,6);
      ellipse(227,494,6,6);
      ellipse(224,494,6,6);
      ellipse(222,494,6,6);
      rectMode(CORNER);
    }
    else if (live == 2) {
      fill(0,250,0);
      rectMode(CENTER);
      rect(230,485,30,20,5);
      rect(230,473,10,5);
      fill(100,100,100);
      ellipse(230,494,6,6);
      ellipse(233,494,6,6);
      ellipse(236,494,6,6);
      ellipse(238,494,6,6);
      ellipse(227,494,6,6);
      ellipse(224,494,6,6);
      ellipse(222,494,6,6);
      fill(0,250,0);
      rect(270,485,30,20,5);
      rect(270,473,10,5);
      fill(100,100,100);
      ellipse(270,494,6,6);
      ellipse(273,494,6,6);
      ellipse(276,494,6,6);
      ellipse(278,494,6,6);
      ellipse(267,494,6,6);
      ellipse(264,494,6,6);
      ellipse(262,494,6,6);
      rectMode(CORNER);
    }
    else if (live == 3) {
      fill(0,250,0);
      rectMode(CENTER);
      rect(230,485,30,20,5);
      rect(230,473,10,5);
      fill(100,100,100);
      ellipse(230,494,6,6);
      ellipse(233,494,6,6);
      ellipse(236,494,6,6);
      ellipse(238,494,6,6);
      ellipse(227,494,6,6);
      ellipse(224,494,6,6);
      ellipse(222,494,6,6);
      fill(0,250,0);
      rect(270,485,30,20,5);
      rect(270,473,10,5);
      fill(100,100,100);
      ellipse(270,494,6,6);
      ellipse(273,494,6,6);
      ellipse(276,494,6,6);
      ellipse(278,494,6,6);
      ellipse(267,494,6,6);
      ellipse(264,494,6,6);
      ellipse(262,494,6,6);
      fill(0,250,0);
      rect(310,485,30,20,5);
      rect(310,473,10,5);
      fill(100,100,100);
      ellipse(310,494,6,6);
      ellipse(313,494,6,6);
      ellipse(316,494,6,6);
      ellipse(318,494,6,6);
      ellipse(307,494,6,6);
      ellipse(304,494,6,6);
      ellipse(302,494,6,6);
      rectMode(CORNER);
    }
    else if (live < 0) {
      menu = 6;
      once = 1;
    }
    if (open == 1) {
      if (check == 1) {
        timecheck = millis();
      }
      check = 0;
      f = createFont("Arial",24,true);
      textFont(f,60);
      fill(0,200,0);
      text("Level " + level,240,250);
      fill(0,200,0);
      if (millis() > timecheck + levelbreak) {
        open = 0;
        check = 1;
        lie = 0;
      }
    }
    if (inv1 == false && inv2 == false && inv3 == false && inv4 == false && inv5 == false && inv6 == false && inv7 == false && inv8 == false && inv9 == false) {
      lie = 1;
      level += 1;
      open = 1;
      inv1 = true;
      inv2 = true;
      inv3 = true;
      inv4 = true;
      inv5 = true;
      inv6 = true;
      inv7 = true;
      inv8 = true;
      inv9 = true;
      fast = 0;
      fast1 = 0;
      fast2 = 0;
      fast3 = 0;
      fast4 = 0;
      fire = 1;
      powerup = 0;
      sideeast = -50;
      sidewest = 323;
      clock = 1;
      mv = 1;
      mvr = 50;
      beam1 = 0;
      beam2 = 0;
      beam3 = 0;
      beam4 = 0;
      beam5 = 0;
      beam6 = 0;
      beam7 = 0;
      beam8 = 0;
      beam9 = 0;
    }
    else if (inv1 == false && inv4 == false && inv7 == false) {
      if (inv2 == false && inv5 == false && inv8 == false) {
        sideeast = -150;
      }
      else {
        sideeast = -100;
      }
    }
    else if (inv3 == false && inv6 == false && inv9 == false) {
      if (inv2 == false && inv5 == false && inv8 == false) {
        sidewest = 423;
      }
      else {
        sidewest = 373;
      }
    }
    if (lie == 0) {
      noStroke();
      fill(250,0,0);
      if (fire == 1) {
          boom = second();
          fire = 0;
      }
      if (inv1 == true) {
        if (level == 1 || level == 2) {
          if (second() == (boom + 1) || second() == (boom + 10) || second() == (boom + 19) || second() == (boom + 28) || second() == (boom + 37) || second() == (boom + 46) || second() == (boom + 55)) {
            beam1 = 1;
            bmvr1 = mvr;
          }
        }
        if (level == 3 || level >= 4) {
          if (second() == (boom + 1) || second() == (boom + 3) || second() == (boom + 12) || second() == (boom + 21) || second() == (boom + 30) || second() == (boom + 39) || second() == (boom + 48) || second() == (boom + 57) || second() == (boom + 10) || second() == (boom + 19) || second() == (boom + 28) || second() == (boom + 37) || second() == (boom + 46) || second() == (boom + 55)) {
            beam1 = 1;
            bmvr1 = mvr;
          }
        }
        fill(250,0,0);
        rect(55 + mv,mvr,3,3);
        rect(50 + mv,10 + mvr,3,8);
        rect(53 + mv,8 + mvr,3,5);
        rect(55 + mv,5 + mvr,3,13);
        rect(58 + mv,3 + mvr,3,5);
        rect(58 + mv,10 + mvr,3,5);
        rect(58 + mv,18 + mvr,5,3);
        rect(60 + mv,5 + mvr,3,10);
        rect(63 + mv,5 + mvr,3,10);
        rect(65 + mv,5 + mvr,3,10);
        rect(65 + mv,18 + mvr,5,3);
        rect(68 + mv,3 + mvr,3,5);
        rect(68 + mv,10 + mvr,3,5);
        rect(70 + mv,mvr,3,3);
        rect(70 + mv,5 + mvr,3,13);
        rect(73 + mv,8 + mvr,3,5);
        rect(75 + mv,10 + mvr,3,8);
      }
      if (inv2 == true) {
        if (level == 1 || level == 2) {
          if (second() == (boom + 2) || second() == (boom + 11) || second() == (boom + 20) || second() == (boom + 29) || second() == (boom + 38) || second() == (boom + 47) || second() == (boom + 56)) {
            beam2 = 1;
            bmvr2 = mvr;
          }
        }
        if (level == 3 || level >= 4) {
          if (second() == (boom + 2) || second() == (boom + 7) || second() == (boom + 18) || second() == (boom + 27) || second() == (boom + 36) || second() == (boom + 45) || second() == (boom + 54) || second() == (boom + 11) || second() == (boom + 20) || second() == (boom + 29) || second() == (boom + 38) || second() == (boom + 47) || second() == (boom + 56)) {
            beam2 = 1;
            bmvr2 = mvr;
          }
        }
        rect(105 + mv,mvr,3,3);
        rect(100 + mv,10 + mvr,3,8);
        rect(103 + mv,8 + mvr,3,5);
        rect(105 + mv,5 + mvr,3,13);
        rect(108 + mv,3 + mvr,3,5);
        rect(108 + mv,10 + mvr,3,5);
        rect(108 + mv,18 + mvr,5,3);
        rect(110 + mv,5 + mvr,3,10);
        rect(113 + mv,5 + mvr,3,10);
        rect(115 + mv,5 + mvr,3,10);
        rect(115 + mv,18 + mvr,5,3);
        rect(118 + mv,3 + mvr,3,5);
        rect(118 + mv,10 + mvr,3,5);
        rect(120 + mv,mvr,3,3);
        rect(120 + mv,5 + mvr,3,13);
        rect(123 + mv,8 + mvr,3,5);
        rect(125 + mv,10 + mvr,3,8);
      }
      if (inv3 == true) {
        if (level == 1 || level == 2) {
          if (second() == (boom + 3) || second() == (boom + 12) || second() == (boom + 21) || second() == (boom + 30) || second() == (boom + 39) || second() == (boom + 48) || second() == (boom + 57)) {
            beam3 = 1;
            bmvr3 = mvr;
          }
        }
        if (level == 3 || level >= 4) {
          if (second() == (boom + 3) || second() == (boom + 1) || second() == (boom + 10) || second() == (boom + 19) || second() == (boom + 28) || second() == (boom + 37) || second() == (boom + 46) || second() == (boom + 55) || second() == (boom + 12) || second() == (boom + 21) || second() == (boom + 30) || second() == (boom + 39) || second() == (boom + 48) || second() == (boom + 57)) {
            beam3 = 1;
            bmvr3 = mvr;
          }
        }
        rect(155 + mv,mvr,3,3);
        rect(150 + mv,10 + mvr,3,8);
        rect(153 + mv,8 + mvr,3,5);
        rect(155 + mv,5 + mvr,3,13);
        rect(158 + mv,3 + mvr,3,5);
        rect(158 + mv,10 + mvr,3,5);
        rect(158 + mv,18 + mvr,5,3);
        rect(160 + mv,5 + mvr,3,10);
        rect(163 + mv,5 + mvr,3,10);
        rect(165 + mv,5 + mvr,3,10);
        rect(165 + mv,18 + mvr,5,3);
        rect(168 + mv,3 + mvr,3,5);
        rect(168 + mv,10 + mvr,3,5);
        rect(170 + mv,mvr,3,3);
        rect(170 + mv,5 + mvr,3,13);
        rect(173 + mv,8 + mvr,3,5);
        rect(175 + mv,10 + mvr,3,8);
      }
      if (inv4 == true) {
        if (level == 1 || level == 2) {
          if (second() == (boom + 4) || second() == (boom + 13) || second() == (boom + 22) || second() == (boom + 31) || second() == (boom + 40) || second() == (boom + 49) || second() == (boom + 58)) {
            beam4 = 1;
            bmvr4 = mvr + 50;
          }
        }
        if (level == 3 || level >= 4) {
          if (second() == (boom + 4) || second() == (boom + 8) || second() == (boom + 17) || second() == (boom + 26) || second() == (boom + 35) || second() == (boom + 44) || second() == (boom + 53) || second() == (boom + 13) || second() == (boom + 22) || second() == (boom + 31) || second() == (boom + 40) || second() == (boom + 49) || second() == (boom + 58)) {
            beam4 = 1;
            bmvr4 = mvr + 50;
          }
        }
        rect(55 + mv,50 + mvr,3,3);
        rect(50 + mv,60 + mvr,3,8);
        rect(53 + mv,58 + mvr,3,5);
        rect(55 + mv,55 + mvr,3,13);
        rect(58 + mv,53 + mvr,3,5);
        rect(58 + mv,60 + mvr,3,5);
        rect(58 + mv,68 + mvr,5,3);
        rect(60 + mv,55 + mvr,3,10);
        rect(63 + mv,55 + mvr,3,10);
        rect(65 + mv,55 + mvr,3,10);
        rect(65 + mv,68 + mvr,5,3);
        rect(68 + mv,53 + mvr,3,5);
        rect(68 + mv,60 + mvr,3,5);
        rect(70 + mv,50 +mvr,3,3);
        rect(70 + mv,55 + mvr,3,13);
        rect(73 + mv,58 + mvr,3,5);
        rect(75 + mv,60 + mvr,3,8);
      }
      if (inv5 == true) {
        if (level == 1 || level == 2) {
          if (second() == (boom + 5) || second() == (boom + 14) || second() == (boom + 23) || second() == (boom + 32) || second() == (boom + 41) || second() == (boom + 50)) {
            beam5 = 1;
            bmvr5 = mvr + 50;
          }
        }
        if (level == 3 || level >= 4) {
          if (second() == (boom + 5) || second() == (boom + 9) || second() == (boom + 18) || second() == (boom + 27) || second() == (boom + 36) || second() == (boom + 45) || second() == (boom + 54) || second() == (boom + 14) || second() == (boom + 23) || second() == (boom + 32) || second() == (boom + 41) || second() == (boom + 50)) {
            beam5 = 1;
            bmvr5 = mvr + 50;
          }
        }
        rect(105 + mv,50 + mvr,3,3);
        rect(100 + mv,60 + mvr,3,8);
        rect(103 + mv,58 + mvr,3,5);
        rect(105 + mv,55 + mvr,3,13);
        rect(108 + mv,53 + mvr,3,5);
        rect(108 + mv,60 + mvr,3,5);
        rect(108 + mv,68 + mvr,5,3);
        rect(110 + mv,55 + mvr,3,10);
        rect(113 + mv,55 + mvr,3,10);
        rect(115 + mv,55 + mvr,3,10);
        rect(115 + mv,68 + mvr,5,3);
        rect(118 + mv,53 + mvr,3,5);
        rect(118 + mv,60 + mvr,3,5);
        rect(120 + mv,50 +mvr,3,3);
        rect(120 + mv,55 + mvr,3,13);
        rect(123 + mv,58 + mvr,3,5);
        rect(125 + mv,60 + mvr,3,8);
      }
      if (inv6 == true) {
        if (level == 1 || level == 2) {
          if (second() == (boom + 6) || second() == (boom + 15) || second() == (boom + 24) || second() == (boom + 33) || second() == (boom + 42) || second() == (boom + 51)) {
            beam6 = 1;
            bmvr6 = mvr + 50;
          }
        }
        if (level == 3 || level >= 4) {
          if (second() == (boom + 6) || second() == (boom + 1) || second() == (boom + 10) || second() == (boom + 19) || second() == (boom + 28) || second() == (boom + 37) || second() == (boom + 46) || second() == (boom + 55) || second() == (boom + 15) || second() == (boom + 24) || second() == (boom + 33) || second() == (boom + 42) || second() == (boom + 51)) {
            beam6 = 1;
            bmvr6 = mvr + 50;
          }
        }
        rect(155 + mv,50 + mvr,3,3);
        rect(150 + mv,60 + mvr,3,8);
        rect(153 + mv,58 + mvr,3,5);
        rect(155 + mv,55 + mvr,3,13);
        rect(158 + mv,53 + mvr,3,5);
        rect(158 + mv,60 + mvr,3,5);
        rect(158 + mv,68 + mvr,5,3);
        rect(160 + mv,55 + mvr,3,10);
        rect(163 + mv,55 + mvr,3,10);
        rect(165 + mv,55 + mvr,3,10);
        rect(165 + mv,68 + mvr,5,3);
        rect(168 + mv,53 + mvr,3,5);
        rect(168 + mv,60 + mvr,3,5);
        rect(170 + mv,50 +mvr,3,3);
        rect(170 + mv,55 + mvr,3,13);
        rect(173 + mv,58 + mvr,3,5);
        rect(175 + mv,60 + mvr,3,8);
      }
      if (inv7 == true) {
        if (level == 1 || level == 2) {
          if (second() == (boom + 7) || second() == (boom + 16) || second() == (boom + 25) || second() == (boom + 34) || second() == (boom + 43)) {
            beam7 = 1;
            bmvr7 = mvr + 100;
          }
        }
        if (level >= 3) {
          if (second() == (boom + 7) || second() == (boom + 5) || second() == (boom + 14) || second() == (boom + 23) || second() == (boom + 32) || second() == (boom + 42) || second() == (boom + 51) || second() == (boom + 16) || second() == (boom + 25) || second() == (boom + 34) || second() == (boom + 43)) {
            beam7 = 1;
            bmvr7 = mvr + 100;
          }
        }
        rect(55 + mv,100 + mvr,3,3);
        rect(50 + mv,110 + mvr,3,8);
        rect(53 + mv,108 + mvr,3,5);
        rect(55 + mv,105 + mvr,3,13);
        rect(58 + mv,103 + mvr,3,5);
        rect(58 + mv,110 + mvr,3,5);
        rect(58 + mv,118 + mvr,5,3);
        rect(60 + mv,105 + mvr,3,10);
        rect(63 + mv,105 + mvr,3,10);
        rect(65 + mv,105 + mvr,3,10);
        rect(65 + mv,118 + mvr,5,3);
        rect(68 + mv,103 + mvr,3,5);
        rect(68 + mv,110 + mvr,3,5);
        rect(70 + mv,100 +mvr,3,3);
        rect(70 + mv,105 + mvr,3,13);
        rect(73 + mv,108 + mvr,3,5);
        rect(75 + mv,110 + mvr,3,8);
      }
      if (inv8 == true) {
        if (level == 1 || level == 2) {
          if (second() == (boom + 8) || second() == (boom + 17) || second() == (boom + 26) || second() == (boom + 35) || second() == (boom + 44)) {
            beam8 = 1;
            bmvr8 = mvr + 100;
          }
        }
        if (level >= 3) {
          if (second() == (boom + 8) || second() == (boom + 6) || second() == (boom + 15) || second() == (boom + 24) || second() == (boom + 33) || second() == (boom + 42) || second() == (boom + 17) || second() == (boom + 26) || second() == (boom + 35) || second() == (boom + 44)) {
            beam8 = 1;
            bmvr8 = mvr + 100;
          }
        }
        rect(105 + mv,100 + mvr,3,3);
        rect(100 + mv,110 + mvr,3,8);
        rect(103 + mv,108 + mvr,3,5);
        rect(105 + mv,105 + mvr,3,13);
        rect(108 + mv,103 + mvr,3,5);
        rect(108 + mv,110 + mvr,3,5);
        rect(108 + mv,118 + mvr,5,3);
        rect(110 + mv,105 + mvr,3,10);
        rect(113 + mv,105 + mvr,3,10);
        rect(115 + mv,105 + mvr,3,10);
        rect(115 + mv,118 + mvr,5,3);
        rect(118 + mv,103 + mvr,3,5);
        rect(118 + mv,110 + mvr,3,5);
        rect(120 + mv,100 +mvr,3,3);
        rect(120 + mv,105 + mvr,3,13);
        rect(123 + mv,108 + mvr,3,5);
        rect(125 + mv,110 + mvr,3,8);
      }
      if (inv9 == true) {
        if (level == 1 || level == 2) {
          if (second() == (boom + 9) || second() == (boom + 18) || second() == (boom + 27) || second() == (boom + 36) || second() == (boom + 45) || second() == (boom + 54)) {
            beam9 = 1;
            bmvr9 = mvr + 100;
          }
        }
        if (level >= 3) {
          if (second() == (boom + 9) || second() == (boom + 4) || second() == (boom + 18) || second() == (boom + 13) || second() == (boom + 22) || second() == (boom + 31) || second() == (boom + 40) || second() == (boom + 49) || second() == (boom + 27) || second() == (boom + 36) || second() == (boom + 45) || second() == (boom + 54)) {
            beam9 = 1;
            bmvr9 = mvr + 100;
          }
        }
        rect(155 + mv,100 + mvr,3,3);
        rect(150 + mv,110 + mvr,3,8);
        rect(153 + mv,108 + mvr,3,5);
        rect(155 + mv,105 + mvr,3,13);
        rect(158 + mv,103 + mvr,3,5);
        rect(158 + mv,110 + mvr,3,5);
        rect(158 + mv,118 + mvr,5,3);
        rect(160 + mv,105 + mvr,3,10);
        rect(163 + mv,105 + mvr,3,10);
        rect(165 + mv,105 + mvr,3,10);
        rect(165 + mv,118 + mvr,5,3);
        rect(168 + mv,103 + mvr,3,5);
        rect(168 + mv,110 + mvr,3,5);
        rect(170 + mv,100 + mvr,3,3);
        rect(170 + mv,105 + mvr,3,13);
        rect(173 + mv,108 + mvr,3,5);
        rect(175 + mv,110 + mvr,3,8);
      }
      if (second() >= (boom + 9)) {
        fire = 1;
      }
      if ((second() - boom) < 0) {
       fire = 1;
      } 
      fill(0,250,0);
      rectMode(CENTER);
      rect(mouseX,450,60,30,5);
      rect(mouseX,430,20,10);
      fill(100,100,100);
      ellipse(mouseX + 20,465,10,10);
      ellipse(mouseX - 20,465,10,10);
      ellipse(mouseX + 15,465,10,10);
      ellipse(mouseX - 15,465,10,10);
      ellipse(mouseX - 10,465,10,10);
      ellipse(mouseX - 5,465,10,10);
      ellipse(mouseX,465,10,10);
      ellipse(mouseX + 5,465,10,10);
      ellipse(mouseX + 10,465,10,10); 
      rectMode(CORNER);
      if (clock == 1) {
        time = second();
      }
      clock = 0;
      if (second() == (time + 15) || second() == (time + 30) || second() == (time + 45)) {
        drop = 1;
      }
      if (drop == 1) {
        yposition = 15;
        xposition = 420;
        display = 1;
        drop = 0;
      }
      if (display == 1) {
        fill(50,250,207);
        ellipse(xposition,yposition,30,30);
        f = createFont("Arial",16,true);
        textFont(f,24);
        fill(10,27,50);
        text("P",xposition - 8,yposition + 10);
        yposition += 10;
      }
      if (yposition > 500) {
        display = 0;
      }
      if (yposition >= (420) && yposition <= (440)) {
        if (xposition >= (mouseX - 20) && xposition <= (mouseX + 20)) {
          if (display == 1) {
            display = 0;
            powerup += 1;
          }
        }
      }
      mv = mv + change;
      if (mv < sideeast ) {
        change = 1;
        mvr += down;
      }
      else if (mv > sidewest) {
        change = -1;
        mvr += down;
      }
      if (mvr > 200) {
        down = -10;
      }
      if (mvr < 50) {
        down = 10;
      }
      if (fast < 20) {
        gun = 0;
      }
      if (fast1 < 20) {
        gun1 = 0;
      }
      if (fast2 < 20) {
        gun2 = 0;
      }
      if (fast3 < 20) {
        gun3 = 0;
      }
      if (fast4 < 20) {
        gun4 = 0;
      }
      if (gun1 == 1) {
        fill(200,200,0);
        ellipse(place1,fast1,10,60);
        fast1 -= 10;
      }
      if (gun == 1) {
        fill(200,200,0);
        ellipse(place,fast,10,60);
        fast -= 10;
      }
      if (gun2 == 1) {
        fill(200,200,0);
        ellipse(place2,fast2,10,60);
        fast2 -= 10;
      }
      if (gun3 == 1) {
        fill(200,200,0);
        ellipse(place3,fast3,10,60);
        fast3 -= 10;
      }
      if (gun4 == 1) {
        fill(200,200,0);
        ellipse(place4,fast4,10,60);
        fast4 -= 10;
      }
      if (beam1 == 1) {
        beammv1 = mv + 50;
        bmvr1 += 6;
        fill(10,70,100);
        rect(beammv1,bmvr1,10,10);
      }
      if (beam2 == 1) {
        beammv2 = mv + 100;
        bmvr2 += 6;
        fill(10,70,200);
        rect(beammv2,bmvr2,10,10);
      }
      if (beam3 == 1) {
        beammv3 = mv + 150;
        bmvr3 += 6;
        fill(10,70,200);
        rect(beammv3,bmvr3,10,10);
      }
      if (beam4 == 1) {
        beammv4 = mv + 50;
        bmvr4 += 6;
        fill(10,70,200);
        rect(beammv4,bmvr4,10,10);
      }
      if (beam5 == 1) {
        beammv5 = mv + 100;
        bmvr5 += 6;
        fill(10,70,200);
        rect(beammv5,bmvr5,10,10);
      }
      if (beam6 == 1) {
        beammv6 = mv + 150;
        bmvr6 += 6;
        fill(10,70,200);
        rect(beammv6,bmvr6,10,10);
      }
      if (beam7 == 1) {
        beammv7 = mv + 50;
        bmvr7 += 6;
        fill(10,70,200);
        rect(beammv7,bmvr7,10,10);
      }
      if (beam8 == 1) {
        beammv8 = mv + 100;
        bmvr8 += 6;
        fill(10,70,200);
        rect(beammv8,bmvr8,10,10);
      }
      if (beam9 == 1) {
        beammv9 = mv + 150;
        bmvr9 += 6;
        fill(10,70,200);
        rect(beammv9,bmvr9,10,10);
      }
      if (bmvr1 > 500) {
        beam1 = 0;
      }
      if (bmvr2 > 500) {
        beam2 = 0;
      }
      if (bmvr3 > 500) {
        beam3 = 0;
      }
      if (bmvr4 > 500) {
        beam4 = 0;
      }
      if (bmvr5 > 500) {
        beam5 = 0;
      }
      if (bmvr6 > 500) {
        beam6 = 0;
      }
      if (bmvr7 > 500) {
        beam7 = 0;
      }
      if (bmvr8 > 500) {
        beam8 = 0;
      }
      if (bmvr9 > 500) {
        beam9 = 0;
      }
      if ((beammv1 >= (place - 5) && beammv1 <= (place + 15)) && (bmvr1 >= (fast - 35) && bmvr1 <= (fast + 35))) {
        if (beam1 == 1) {
          beam1 = 0;
          beammv1 = 520;
          gun = 0;
          fast = 390;
          place = 300;
        }
      }
      if ((beammv1 >= (place1 - 5) && beammv1 <= (place1 + 15)) && (bmvr1 >= (fast1 - 35) && bmvr1 <= (fast1 + 35))) {
        if (beam1 == 1) {
          beam1 = 0;
          beammv1 = 520;
          gun1 = 0;
          fast1 = 390;
          place1 = 300;
        }
      }
      if ((beammv1 >= (place2 - 5) && beammv1 <= (place2 + 15)) && (bmvr1 >= (fast2 - 35) && bmvr1 <= (fast2 + 35))) {
        if (beam1 == 1) {
          beam1 = 0;
          beammv1 = 520;
          gun2 = 0;
          fast2 = 390;
          place2 = 300;
        }
      }
      if ((beammv1 >= (place3 - 5) && beammv1 <= (place3 + 15)) && (bmvr1 >= (fast3 - 35) && bmvr1 <= (fast3 + 35))) {
        if (beam1 == 1) {
          beam1 = 0;
          beammv1 = 520;
          gun3 = 0;
          fast3 = 390;
          place3 = 300;
        }
      }
      if ((beammv1 >= (place4 - 5) && beammv1 <= (place4 + 15)) && (bmvr1 >= (fast4 - 35) && bmvr1 <= (fast4 + 35))) {
        if (beam1 == 1) {
          beam1 = 0;
          beammv1 = 520;
          gun4 = 0;
          fast4 = 390;
          place4 = 300;
        }
      }
      if ((beammv2 >= (place - 5) && beammv2 <= (place + 15)) && (bmvr2 >= (fast - 35) && bmvr2 <= (fast + 35))) {
        if (beam2 == 1) {
          beam2 = 0;
          beammv2 = 520;
          gun = 0;
          fast = 390;
          place = 300;
        }
      }
      if ((beammv2 >= (place1 - 5) && beammv2 <= (place1 + 15)) && (bmvr2 >= (fast1 - 35) && bmvr2 <= (fast1 + 35))) {
        if (beam2 == 1) {
          beam2 = 0;
          beammv2 = 520;
          gun1 = 0;
          fast1 = 390;
          place1 = 300;
        }
      }
      if ((beammv2 >= (place2 - 5) && beammv2 <= (place2 + 15)) && (bmvr2 >= (fast2 - 35) && bmvr2 <= (fast2 + 35))) {
        if (beam2 == 1) {
          beam2 = 0;
          beammv2 = 520;
          gun2 = 0;
          fast2 = 390;
          place2 = 300;
        }
      }
      if ((beammv2 >= (place3 - 5) && beammv2 <= (place3 + 15)) && (bmvr2 >= (fast3 - 35) && bmvr2 <= (fast3 + 35))) {
        if (beam2 == 1) {
          beam2 = 0;
          beammv2 = 520;
          gun3 = 0;
          fast3 = 390;
          place3 = 300;
        }
      }
      if ((beammv2 >= (place4 - 5) && beammv2 <= (place4 + 15)) && (bmvr2 >= (fast4 - 35) && bmvr2 <= (fast4 + 35))) {
        if (beam2 == 1) {
          beam2 = 0;
          beammv2 = 520;
          gun4 = 0;
          fast4 = 390;
          place4 = 300;
        }
      }
      if ((beammv3 >= (place - 5) && beammv3 <= (place + 15)) && (bmvr3 >= (fast - 35) && bmvr3 <= (fast + 35))) {
        if (beam3 == 1) {
          beam3 = 0;
          beammv3 = 520;
          gun = 0;
          fast = 390;
          place = 300;
        }
      }
      if ((beammv3 >= (place1 - 5) && beammv3 <= (place1 + 15)) && (bmvr3 >= (fast1 - 35) && bmvr3 <= (fast1 + 35))) {
        if (beam3 == 1) {
          beam3 = 0;
          beammv3 = 520;
          gun1 = 0;
          fast1 = 390;
          place1 = 300;
        }
      }
      if ((beammv3 >= (place2 - 5) && beammv3 <= (place2 + 15)) && (bmvr3 >= (fast2 - 35) && bmvr3 <= (fast2 + 35))) {
        if (beam3 == 1) {
          beam3 = 0;
          beammv3 = 520;
          gun2 = 0;
          fast2 = 390;
          place2 = 300;
        }
      }
      if ((beammv3 >= (place3 - 5) && beammv3 <= (place3 + 15)) && (bmvr3 >= (fast3 - 35) && bmvr3 <= (fast3 + 35))) {
        if (beam3 == 1) {
          beam3 = 0;
          beammv3 = 520;
          gun3 = 0;
          fast3 = 390;
          place3 = 300;
        }
      }
      if ((beammv3 >= (place4 - 5) && beammv3 <= (place4 + 15)) && (bmvr3 >= (fast4 - 35) && bmvr3 <= (fast4 + 35))) {
        if (beam3 == 1) {
          beam3 = 0;
          beammv3 = 520;
          gun4 = 0;
          fast4 = 390;
          place4 = 300;
        }
      }
      if ((beammv4 >= (place - 5) && beammv4 <= (place + 15)) && (bmvr4 >= (fast - 35) && bmvr4 <= (fast + 35))) {
        if (beam4 == 1) {
          beam4 = 0;
          beammv4 = 520;
          gun = 0;
          fast = 390;
          place = 300;
        }
      }
      if ((beammv4 >= (place1 - 5) && beammv4 <= (place1 + 15)) && (bmvr4 >= (fast1 - 35) && bmvr4 <= (fast1 + 35))) {
        if (beam4 == 1) {
          beam4 = 0;
          beammv4 = 520;
          gun1 = 0;
          fast1 = 390;
          place1 = 300;
        }
      }
      if ((beammv4 >= (place2 - 5) && beammv4 <= (place2 + 15)) && (bmvr4 >= (fast2 - 35) && bmvr4 <= (fast2 + 35))) {
        if (beam4 == 1) {
          beam4 = 0;
          beammv4 = 520;
          gun2 = 0;
          fast2 = 390;
          place2 = 300;
        }
      }
      if ((beammv4 >= (place3 - 5) && beammv4 <= (place3 + 15)) && (bmvr4 >= (fast3 - 35) && bmvr4 <= (fast3 + 35))) {
        if (beam4 == 1) {
          beam4 = 0;
          beammv4 = 520;
          gun3 = 0;
          fast3 = 390;
          place3 = 300;
        }
      }
      if ((beammv4 >= (place4 - 5) && beammv4 <= (place4 + 15)) && (bmvr4 >= (fast4 - 35) && bmvr4 <= (fast4 + 35))) {
        if (beam4 == 1) {
          beam4 = 0;
          beammv4 = 520;
          gun4 = 0;
          fast4 = 390;
          place4 = 300;
        }
      }
      if ((beammv5 >= (place - 5) && beammv5 <= (place + 15)) && (bmvr5 >= (fast - 35) && bmvr5 <= (fast + 35))) {
        if (beam5 == 1) {
          beam5 = 0;
          beammv5 = 520;
          gun = 0;
          fast = 390;
          place = 300;
        }
      }
      if ((beammv5 >= (place1 - 5) && beammv5 <= (place1 + 15)) && (bmvr5 >= (fast1 - 35) && bmvr5 <= (fast1 + 35))) {
        if (beam5 == 1) {
          beam5 = 0;
          beammv5 = 520;
          gun1 = 0;
          fast1 = 390;
          place1 = 300;
        }
      }
      if ((beammv5 >= (place2 - 5) && beammv5 <= (place2 + 15)) && (bmvr5 >= (fast2 - 35) && bmvr5 <= (fast2 + 35))) {
        if (beam5 == 1) {
          beam5 = 0;
          beammv5 = 520;
          gun2 = 0;
          fast2 = 390;
          place2 = 300;
        }
      }
      if ((beammv5 >= (place3 - 5) && beammv5 <= (place3 + 15)) && (bmvr5 >= (fast3 - 35) && bmvr5 <= (fast3 + 35))) {
        if (beam5 == 1) {
          beam5 = 0;
          beammv5 = 520;
          gun3 = 0;
          fast3 = 390;
          place3 = 300;
        }
      }
      if ((beammv5 >= (place4 - 5) && beammv5 <= (place4 + 15)) && (bmvr5 >= (fast4 - 35) && bmvr5 <= (fast4 + 35))) {
        if (beam5 == 1) {
          beam5 = 0;
          beammv5 = 520;
          gun4 = 0;
          fast4 = 390;
          place4 = 300;
        }
      }
      if ((beammv6 >= (place - 5) && beammv6 <= (place + 15)) && (bmvr6 >= (fast - 35) && bmvr6 <= (fast + 35))) {
        if (beam6 == 1) {
          beam6 = 0;
          beammv6 = 520;
          gun = 0;
          fast = 390;
          place = 300;
        }
      }
      if ((beammv6 >= (place1 - 5) && beammv6 <= (place1 + 15)) && (bmvr6 >= (fast1 - 35) && bmvr6 <= (fast1 + 35))) {
        if (beam6 == 1) {
          beam6 = 0;
          beammv6 = 520;
          gun1 = 0;
          fast1 = 390;
          place1 = 300;
        }
      }
      if ((beammv6 >= (place2 - 5) && beammv6 <= (place2 + 15)) && (bmvr6 >= (fast2 - 35) && bmvr6 <= (fast2 + 35))) {
        if (beam6 == 1) {
          beam6 = 0;
          beammv6 = 520;
          gun2 = 0;
          fast2 = 390;
          place2 = 300;
        }
      }
      if ((beammv6 >= (place3 - 5) && beammv6 <= (place3 + 15)) && (bmvr6 >= (fast3 - 35) && bmvr6 <= (fast3 + 35))) {
        if (beam6 == 1) {
          beam6 = 0;
          beammv6 = 520;
          gun3 = 0;
          fast3 = 390;
          place3 = 300;
        }
      }
      if ((beammv6 >= (place4 - 5) && beammv6 <= (place4 + 15)) && (bmvr6 >= (fast4 - 35) && bmvr6 <= (fast4 + 35))) {
        if (beam6 == 1) {
          beam6 = 0;
          beammv6 = 520;
          gun4 = 0;
          fast4 = 390;
          place4 = 300;
        }
      }
      if ((beammv7 >= (place - 5) && beammv7 <= (place + 15)) && (bmvr7 >= (fast - 35) && bmvr7 <= (fast + 35))) {
        if (beam7 == 1) {
          beam7 = 0;
          beammv7 = 520;
          gun = 0;
          fast = 390;
          place = 300;
        }
      }
      if ((beammv7 >= (place1 - 5) && beammv7 <= (place1 + 15)) && (bmvr7 >= (fast1 - 35) && bmvr7 <= (fast1 + 35))) {
        if (beam7 == 1) {
          beam7 = 0;
          beammv7 = 520;
          gun1 = 0;
          fast1 = 390;
          place1 = 300;
        }
      }
      if ((beammv7 >= (place2 - 5) && beammv7 <= (place2 + 15)) && (bmvr7 >= (fast2 - 35) && bmvr7 <= (fast2 + 35))) {
        if (beam7 == 1) {
          beam7 = 0;
          beammv7 = 520;
          gun2 = 0;
          fast2 = 390;
          place2 = 300;
        }
      }
      if ((beammv7 >= (place3 - 5) && beammv7 <= (place3 + 15)) && (bmvr7 >= (fast3 - 35) && bmvr7 <= (fast3 + 35))) {
        if (beam7 == 1) {
          beam7 = 0;
          beammv7 = 520;
          gun3 = 0;
          fast3 = 390;
          place3 = 300;
        }
      }
      if ((beammv7 >= (place4 - 5) && beammv7 <= (place4 + 15)) && (bmvr7 >= (fast4 - 35) && bmvr7 <= (fast4 + 35))) {
        if (beam7 == 1) {
          beam7 = 0;
          beammv7 = 520;
          gun4 = 0;
          fast4 = 390;
          place4 = 300;
        }
      }
      if ((beammv8 >= (place - 5) && beammv8 <= (place + 15)) && (bmvr8 >= (fast - 35) && bmvr8 <= (fast + 35))) {
        if (beam8 == 1) {
          beam8 = 0;
          beammv8 = 520;
          gun = 0;
          fast = 390;
          place = 300;
        }
      }
      if ((beammv8 >= (place1 - 5) && beammv8 <= (place1 + 15)) && (bmvr8 >= (fast1 - 35) && bmvr8 <= (fast1 + 35))) {
        if (beam8 == 1) {
          beam8 = 0;
          beammv8 = 520;
          gun1 = 0;
          fast1 = 390;
          place1 = 300;
        }
      }
      if ((beammv8 >= (place2 - 5) && beammv8 <= (place2 + 15)) && (bmvr8 >= (fast2 - 35) && bmvr8 <= (fast2 + 35))) {
        if (beam8 == 1) {
          beam8 = 0;
          beammv8 = 520;
          gun2 = 0;
          fast2 = 390;
          place2 = 300;
        }
      }
      if ((beammv8 >= (place3 - 5) && beammv8 <= (place3 + 15)) && (bmvr8 >= (fast3 - 35) && bmvr8 <= (fast3 + 35))) {
        if (beam8 == 1) {
          beam8 = 0;
          beammv8 = 520;
          gun3 = 0;
          fast3 = 390;
          place3 = 300;
        }
      }
      if ((beammv8 >= (place4 - 5) && beammv8 <= (place4 + 15)) && (bmvr8 >= (fast4 - 35) && bmvr8 <= (fast4 + 35))) {
        if (beam8 == 1) {
          beam8 = 0;
          beammv8 = 520;
          gun4 = 0;
          fast4 = 390;
          place4 = 300;
        }
      }
      if ((beammv9 >= (place - 5) && beammv9 <= (place + 15)) && (bmvr9 >= (fast - 35) && bmvr9 <= (fast + 35))) {
        if (beam9 == 1) {
          beam9 = 0;
          beammv9 = 520;
          gun = 0;
          fast = 390;
          place = 300;
        }
      }
      if ((beammv9 >= (place1 - 5) && beammv9 <= (place1 + 15)) && (bmvr9 >= (fast1 - 35) && bmvr9 <= (fast1 + 35))) {
        if (beam9 == 1) {
          beam9 = 0;
          beammv9 = 520;
          gun1 = 0;
          fast1 = 390;
          place1 = 300;
        }
      }
      if ((beammv9 >= (place2 - 5) && beammv9 <= (place2 + 15)) && (bmvr9 >= (fast2 - 35) && bmvr9 <= (fast2 + 35))) {
        if (beam9 == 1) {
          beam9 = 0;
          beammv9 = 520;
          gun2 = 0;
          fast2 = 390;
          place2 = 300;
        }
      }
      if ((beammv9 >= (place3 - 5) && beammv9 <= (place3 + 15)) && (bmvr9 >= (fast3 - 35) && bmvr9 <= (fast3 + 35))) {
        if (beam9 == 1) {
          beam9 = 0;
          beammv9 = 520;
          gun3 = 0;
          fast3 = 390;
          place3 = 300;
        }
      }
      if ((beammv9 >= (place4 - 5) && beammv9 <= (place4 + 15)) && (bmvr9 >= (fast4 - 35) && bmvr9 <= (fast4 + 35))) {
        if (beam9 == 1) {
          beam9 = 0;
          beammv9 = 520;
          gun4 = 0;
          fast4 = 390;
          place4 = 300;
        }
      }
      if ((beammv9 >= (mouseX - 35) && beammv9 <= (mouseX + 35)) && (bmvr9 >= 430 && bmvr9 <= 470)) {
        if (beam9 == 1) {
          live -= 1;
          beam9 = 0;
          bmvr9 = 520;
        }
      }
      if ((beammv8 >= (mouseX - 35) && beammv8 <= (mouseX + 35)) && (bmvr8 >= 430 && bmvr8 <= 470)) {
        if (beam8 == 1) {
          live -= 1;
          beam8 = 0;
          bmvr8 = 520;
        }
      }
      if ((beammv7 >= (mouseX - 35) && beammv7 <= (mouseX + 35)) && (bmvr7 >= 430 && bmvr7 <= 470)) {
        if (beam7 == 1) {
          live -= 1;
          beam7 = 0;
          bmvr7 = 530;
        }
      }
      if ((beammv6 >= (mouseX - 35) && beammv6 <= (mouseX + 35)) && (bmvr6 >= 430 && bmvr6 <= 470)) {
        if (beam6 == 1) {
          live -= 1;
          beam6 = 0;
          bmvr6 = 520;
        }
      }
      if ((beammv5 >= (mouseX - 35) && beammv5 <= (mouseX + 35)) && (bmvr5 >= 430 && bmvr5 <= 470)) {
        if (beam5 == 1) {
          live -= 1;
          beam5 = 0;
          bmvr5 = 520;
        }
      }
      if ((beammv4 >= (mouseX - 35) && beammv4 <= (mouseX + 35)) && (bmvr4 >= 430 && bmvr4 <= 470)) {
        if (beam4 == 1) {
          live -= 1;
          beam4 = 0;
          bmvr4 = 520;
        }
      }
      if ((beammv3 >= (mouseX - 35) && beammv3 <= (mouseX + 35)) && (bmvr3 >= 430 && bmvr3 <= 470)) {
        if (beam3 == 1) {
          live -= 1;
          beam3 = 0;
          bmvr3 = 520;
        }
      }
      if ((beammv2 >= (mouseX - 35) && beammv2 <= (mouseX + 35)) && (bmvr2 >= 430 && bmvr2 <= 470)) {
        if (beam2 == 1) {
          live -= 1;
          beam2 = 0;
          bmvr2 = 520;
        }
      }
      if ((beammv1 >= (mouseX - 35) && beammv1 <= (mouseX + 35)) && (bmvr1 >= 430 && bmvr1 <= 470)) {
        if (beam1 == 1) {
          live -= 1;
          beam1 = 0;
          bmvr1 = 520;
        }
      }
      if (((place) >= (38 + mv) && (place) <= (74 + mv))) {
        if (((fast) >= (mvr - 10) && (fast) <= (mvr + 10))) {
          if (inv1 == true) {
            gun = 0;
            score += level;
            fast = 390;
            place = 300;
          }
          inv1 = false;
        }
        else if (((fast) >= (mvr + 40) && (fast) <= (mvr + 65))) {
          if (inv4 == true) {
            gun = 0;
            score += level;
            fast = 390;
            place = 300;
          }
          inv4 = false;
        }
        else if (((fast) >= (mvr + 90) && (fast) <= (mvr + 115))) {
          if (inv7 == true) {
            gun = 0;
            score += level;
            fast = 390;
            place = 300;
          }
          inv7 = false;
        }
      }
      else if (((place) >= (97 + mv) && (place) <= (122 + mv))) {
        if (((fast) >= (mvr - 10) && (fast) <= (mvr + 15))) {
          if (inv2 == true) {
            gun = 0;
            score += level;
            fast = 390;
            place = 300;
          }
          inv2 = false;
        }
        else if (((fast) >= (mvr + 40) && (fast) <= (mvr + 65))) {
          if (inv5 == true) {
            gun = 0;
            score += level;
            fast = 390;
            place = 300;
          }
          inv5 = false;
        }
        else if (((fast) >= (mvr + 90) && (fast) <= (mvr + 115))) {
          if (inv8 == true) {
            gun = 0;
            score += level;
            fast = 390;
            place = 300;
          }
          inv8 = false;
        } 
      }
      else if (((place) >= (147 + mv) && (place) <= (183 + mv))) {
        if (((fast) >= (mvr - 10) && (fast) <= (mvr + 15))) {
          if (inv3 == true) {
            gun = 0;
            score += level;
            fast = 390;
            place = 300;
          }
          inv3 = false;
        }
        else if (((fast) >= (mvr + 40) && (fast) <= (mvr + 65))) {
          if (inv6 == true) {
            gun = 0;
            score += level;
            fast = 390;
            place = 300;
          }
          inv6 = false;
        }
        else if (((fast) >= (mvr + 90) && (fast) <= (mvr + 115))) {
          if (inv9 == true) {
            gun = 0;
            score += level;
            fast = 390;
            place = 300;
          }
          inv9 = false;
        }
      }
      if (((place1) >= (38 + mv) && (place1) <= (70 + mv))) {
        if (((fast1) >= (mvr - 10) && (fast1) <= (mvr + 10))) {
          if (inv1 == true) {
            gun1 = 0;
            score += level;
            fast1 = 390;
            place1 = 300;
          }
          inv1 = false;
        }
        else if (((fast1) >= (mvr + 40) && (fast1) <= (mvr + 65))) {
          if (inv4 == true) {
            gun1 = 0;
            score += level;
            fast1 = 390;
            place1 = 300;
          }
          inv4 = false;
        }
        else if (((fast1) >= (mvr + 90) && (fast1) <= (mvr + 115))) {
          if (inv7 == true) {
            gun1 = 0;
            score += level;
            fast1 = 390;
            place1 = 300;
          }
          inv7 = false;
        }
      }
      else if (((place1) >= (97 + mv) && (place1) <= (120 + mv))) {
        if (((fast1) >= (mvr - 10) && (fast1) <= (mvr + 15))) {
          if (inv2 == true) {
            gun1 = 0;
            score += level;
            fast1 = 390;
            place1 = 300;
          }
          inv2 = false;
        }
        else if (((fast1) >= (mvr + 40) && (fast1) <= (mvr + 65))) {
          if (inv5 == true) {
            gun1 = 0;
            score += level;
            fast1 = 390;
            place1 = 300;
          }
          inv5 = false;
        }
        else if (((fast1) >= (mvr + 90) && (fast1) <= (mvr + 115))) {
          if (inv8 == true) {
            gun1 = 0;
            score += level;
            fast1 = 390;
            place1 = 300;
          }
          inv8 = false;
        } 
      }
      else if (((place1) >= (147 + mv) && (place1) <= (182 + mv))) {
        if (((fast1) >= (mvr - 10) && (fast1) <= (mvr + 15))) {
          if (inv3 == true) {
            gun1 = 0;
            score += level;
            fast1 = 390;
            place1 = 300;
          }
          inv3 = false;
        }
        else if (((fast1) >= (mvr + 40) && (fast1) <= (mvr + 65))) {
          if (inv6 == true) {
            gun1 = 0;
            score += level;
            fast1 = 390;
            place1 = 300;
          }
          inv6 = false;
        }
        else if (((fast1) >= (mvr + 90) && (fast1) <= (mvr + 115))) {
          if (inv9 == true) {
            gun1 = 0;
            score += level;
            fast1 = 390;
            place1 = 300;
          }
          inv9 = false;
        }
      }
      if (((place2) >= (38 + mv) && (place2) <= (70 + mv))) {
        if (((fast2) >= (mvr - 10) && (fast2) <= (mvr + 10))) {
          if (inv1 == true) {
            gun2 = 0;
            score += level;
            fast2 = 390;
            place2 = 300;
          }
          inv1 = false;
        }
        else if (((fast2) >= (mvr + 40) && (fast2) <= (mvr + 65))) {
          if (inv4 == true) {
            gun2 = 0;
            score += level;
            fast2 = 390;
            place2 = 300;
          }
          inv4 = false;
        }
        else if (((fast2) >= (mvr + 90) && (fast2) <= (mvr + 115))) {
          if (inv7 == true) {
            gun2 = 0;
            score += level;
            fast2 = 390;
            place2 = 300;
          }
          inv7 = false;
        }
      }
      else if (((place2) >= (97 + mv) && (place2) <= (120 + mv))) {
        if (((fast2) >= (mvr - 10) && (fast2) <= (mvr + 15))) {
          if (inv2 == true) {
            gun2 = 0;
            score += level;
            fast2 = 390;
            place2 = 300;
          }
          inv2 = false;
        }
        else if (((fast2) >= (mvr + 40) && (fast2) <= (mvr + 65))) {
          if (inv5 == true) {
            gun2 = 0;
            score += level;
            fast2 = 390;
            place2 = 300;
          }
          inv5 = false;
        }
        else if (((fast2) >= (mvr + 90) && (fast2) <= (mvr + 115))) {
          if (inv8 == true) {
            gun2 = 0;
            score += level;
            fast2 = 390;
            place2 = 300;
          }
          inv8 = false;
        } 
      }
      else if (((place2) >= (147 + mv) && (place2) <= (182 + mv))) {
        if (((fast2) >= (mvr - 10) && (fast2) <= (mvr + 15))) {
          if (inv3 == true) {
            gun2 = 0;
            score += level;
            fast2 = 390;
            place2 = 300;
          }
          inv3 = false;
        }
        else if (((fast2) >= (mvr + 40) && (fast2) <= (mvr + 65))) {
          if (inv6 == true) {
            gun2 = 0;
            score += level;
            fast2 = 390;
            place2 = 300;
          }
          inv6 = false;
        }
        else if (((fast2) >= (mvr + 90) && (fast2) <= (mvr + 115))) {
          if (inv9 == true) {
            gun2 = 0;
            score += level;
            fast2 = 390;
            place2 = 300;
          }
          inv9 = false;
        }
      }
      if (((place3) >= (38 + mv) && (place3) <= (70 + mv))) {
        if (((fast3) >= (mvr - 10) && (fast3) <= (mvr + 10))) {
          if (inv1 == true) {
            gun3 = 0;
            score += level;
            fast3 = 390;
            place3 = 300;
          }
          inv1 = false;
        }
        else if (((fast3) >= (mvr + 40) && (fast3) <= (mvr + 65))) {
          if (inv4 == true) {
            gun3 = 0;
            score += level;
            fast3 = 390;
            place3 = 300;
          }
          inv4 = false;
        }
        else if (((fast3) >= (mvr + 90) && (fast3) <= (mvr + 115))) {
          if (inv7 == true) {
            gun3 = 0;
            score += level;
            fast3 = 390;
            place3 = 300;
          }
          inv7 = false;
        }
      }
      else if (((place3) >= (97 + mv) && (place3) <= (120 + mv))) {
        if (((fast3) >= (mvr - 10) && (fast3) <= (mvr + 15))) {
          if (inv2 == true) {
            gun3 = 0;
            score += level;
            fast3 = 390;
            place3 = 300;
          }
          inv2 = false;
        }
        else if (((fast3) >= (mvr + 40) && (fast3) <= (mvr + 65))) {
          if (inv5 == true) {
            gun3 = 0;
            score += level;
            fast3 = 390;
            place3 = 300;
          }
          inv5 = false;
        }
        else if (((fast3) >= (mvr + 90) && (fast3) <= (mvr + 115))) {
          if (inv8 == true) {
            gun3 = 0;
            score += level;
            fast3 = 390;
            place3 = 300;
          }
          inv8 = false;
        } 
      }
      else if (((place3) >= (147 + mv) && (place3) <= (182 + mv))) {
        if (((fast3) >= (mvr - 10) && (fast3) <= (mvr + 15))) {
          if (inv3 == true) {
            gun3 = 0;
            score += level;
            fast3 = 390;
            place3 = 300;
          }
          inv3 = false;
        }
        else if (((fast3) >= (mvr + 40) && (fast3) <= (mvr + 65))) {
          if (inv6 == true) {
            gun3 = 0;
            score += level;
            fast3 = 390;
            place3 = 300;
          }
          inv6 = false;
        }
        else if (((fast3) >= (mvr + 90) && (fast3) <= (mvr + 115))) {
          if (inv9 == true) {
            gun3 = 0;
            score += level;
            fast3 = 390;
            place3 = 300;
          }
          inv9 = false;
        }
      }
      if (((place4) >= (38 + mv) && (place4) <= (70 + mv))) {
        if (((fast4) >= (mvr - 10) && (fast4) <= (mvr + 10))) {
          if (inv1 == true) {
            gun4 = 0;
            score += level;
            fast4 = 390;
            place4 = 300;
          }
          inv1 = false;
        }
        else if (((fast4) >= (mvr + 40) && (fast4) <= (mvr + 65))) {
          if (inv4 == true) {
            gun4 = 0;
            score += level;
            fast4 = 390;
            place4 = 300;
          }
          inv4 = false;
        }
        else if (((fast4) >= (mvr + 90) && (fast4) <= (mvr + 115))) {
          if (inv7 == true) {
            gun4 = 0;
            score += level;
            fast4 = 390;
            place4 = 300;
          }
          inv7 = false;
        }
      }
      else if (((place4) >= (97 + mv) && (place4) <= (120 + mv))) {
        if (((fast4) >= (mvr - 10) && (fast4) <= (mvr + 15))) {
          if (inv2 == true) {
            gun4 = 0;
            score += level;
            fast4 = 390;
            place4 = 300;
          }
          inv2 = false;
        }
        else if (((fast4) >= (mvr + 40) && (fast4) <= (mvr + 65))) {
          if (inv5 == true) {
            gun4 = 0;
            score += level;
            fast4 = 390;
            place4 = 300;
          }
          inv5 = false;
        }
        else if (((fast4) >= (mvr + 90) && (fast4) <= (mvr + 115))) {
          if (inv8 == true) {
            gun4 = 0;
            score += level;
            fast4 = 390;
            place4 = 300;
          }
          inv8 = false;
        } 
      }
      else if (((place4) >= (147 + mv) && (place4) <= (182 + mv))) {
        if (((fast4) >= (mvr - 10) && (fast4) <= (mvr + 15))) {
          if (inv3 == true) {
            gun4 = 0;
            score += level;
            fast4 = 390;
            place4 = 300;
          }
          inv3 = false;
        }
        else if (((fast4) >= (mvr + 40) && (fast4) <= (mvr + 65))) {
          if (inv6 == true) {
            gun4 = 0;
            score += level;
            fast4 = 390;
            place4 = 300;
          }
          inv6 = false;
        }
        else if (((fast4) >= (mvr + 90) && (fast4) <= (mvr + 115))) {
          if (inv9 == true) {
            gun4 = 0;
            score += level;
            fast4 = 390;
            place4 = 300;
          }
          inv9 = false;
        }
      }
    }
  }
  if (mousePressed) {
      if (menu == 2) {
        if (gun == 0) {
          if (powerup >= 0) {
            gun = 1;
            place = pmouseX;
            fast = 390;
          }
        }
        else if (gun1 == 0) {
          if (powerup > 0) {
            gun1 = 1;
            place1 = pmouseX;
            fast1 = 390;
          }
        }
        else if (gun2 == 0) {
          if (powerup > 0) {
            gun2 = 1;
            place2 = pmouseX;
            fast2 = 390;
          }
        }
        else if (gun3 == 0) {
          if (powerup > 0) {
            gun3 = 1;
            place3 = pmouseX;
            fast3 = 390;
          }
        }
        else if (gun4 == 0) {
          if (powerup > 0) {
            gun4 = 1;
            place4 = pmouseX;
            fast4 = 390;
          }
        }
        if (mouseX >= 430 && mouseX <= 490) {
          if (mouseY >= 470 && mouseY <= 490) {
            menu = 4;
            sideeast = -50;
            sidewest = 323;
            fast = 0;
            fast1 = 0;
            fast2 = 0;
            fast3 = 0;
            fast4 = 0;
            place = 0;
            place1 = 0;
            place2 = 0;
            place3 = 0;
            place4 = 0;
          }
        }
      }
      else if (menu == 4) {
        if (mouseX >= 350 && mouseX <= 490) {
          if (mouseY >= 340 && mouseY <= 380) {
            menu = 2;
          }
          else if (mouseY >= 410 && mouseY <= 450) {
            menu = 1;
            fast = 0;
            fast1 = 0;
            fast2 = 0;
            fast3 = 0;
            fast4 = 0;
            beammv1 = 650;
            beam1 = 0;
            beam2 = 0;
            beam3 = 0;
            beam4 = 0;
            beam5 = 0;
            beam6 = 0;
            beam7 = 0;
            beam8 = 0;
            beam9 = 0;
            beammv2 = 650;
            beammv3 = 650;
            beammv4 = 650;
            beammv5 = 650;
            beammv6 = 650;
            beammv7 = 650;
            beammv8 = 650;
            beammv9 = 650;
            sideeast = -50;
            sidewest = 323;
            level = 1;
            open = 1;
            lie = 1;
          }
        }
      }
      else if (menu == 3) {
        if (mouseY >= 300 && mouseY <= 350) {
          if (mouseX >= 175 && mouseX <= 325) {
              menu = 1;
            }
          }
        } 
      else if (menu == 1) {
        if (mouseX >= 175 && mouseX <= 325) {
          if (mouseY >= 150 && mouseY <= 200) {
            menu = 2;
            score = 0;
            live = 3;
            sideeast = -50;
            sidewest = 323;
            inv1 = true;
            inv2 = true;
            inv3 = true;
            inv4 = true;
            inv5 = true;
            inv6 = true;
            inv7 = true;
            inv8 = true;
            inv9 = true;
          }
          else if (mouseY >= 250 && mouseY <= 300) {
            menu = 3;
          }
        }
      }
    }
}
