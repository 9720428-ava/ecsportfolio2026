//Ava Manwaring |4Mar2026\ShapeGame
int x, y, tx, ty,score;
float tw;
PImage player,target;

void setup() {
  size(800, 800);
  x=width/2;
  y=height/2;
  tx = int(random(20, width-20));
  ty = int(random(20, height-20));
  tw = 200.0;
  score = 0;
  player = loadImage("duck.png");
  target = loadImage("icecream.png");
}

void draw() {
  background(#9EDDF0);
  scorePanel();
  target();
  imageMode(CENTER);
  image(player,x,y);
  //ellipse(x, y, 20, 20);
}
void target() {
  float d = dist(x, y, tx, ty);
  println(d);
  println(score);
  imageMode(CENTER);
  image(target,tx,ty,tw,tw);
  //rect(tx, ty, 50, 50);
  if (d<50) {
    score =score + int(tw*2);
    tx = int(random(20, width-20));
    ty = int(random(20, height-20));
    tw = 200;
  }
}


void scorePanel(){
  rectMode(CENTER);
  fill(127,127);
  rect(width/2,15,width,30);
  if(tw<6){
    gameOver();
  }
  fill(0);
  textSize(40);
  text("Score:" +score,20,25);
  tw = tw - 0.1;
  target.resize(int(tw),int(tw));
}

void gameOver() {
  background(0);
  fill(255,0,0);
  textSize(40);
  text("GAME OVER", width/2, height/2);
  noLoop();
}

void keyPressed() {
  if (x>width) {
    x=0;
  }
  if (x < 0) {
    y=width;
  }
  //WASD and Arrow Movement
  if (key == 'w' ||key == 'W' || keyCode ==UP) {
    y = y-30;
  } else  if (key == 's' ||  key =='s'|| keyCode ==DOWN) {
    y=y+30;
  } else if (key == 'a' ||key =='A' || keyCode ==LEFT) {
    x=x-30;
  } else if (key == 'd' ||key =='D'|| keyCode ==RIGHT) {
    x=x+30;
  }
}
