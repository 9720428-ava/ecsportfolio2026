//Ava manwaring | 25 Mar 2026| Timer
import processing.sound.*;
SoundFile alarm;
Button btnStart, btnStop, btnClear;
int totalTime, startTime, timeLeft;
boolean running;

void setup () {
  size(500, 500);
  alarm = new SoundFile(this, "alarm.wav");
  btnStart = new Button(width/2, 50, 100, 30, "START");
  btnStop = new Button(width/2, 100, 100, 30, "STOP");
  btnClear = new Button(width/2, 150, 100, 30, "CLEAR");
  totalTime = 10;
  startTime = 0;
  running = false;
}

void draw() {
  background(#CFFAFF);

  if (running == true) {
    int elapsed = (millis() - startTime)/1000;
    timeLeft = totalTime - elapsed;

    if (timeLeft <= 0) {
      timeLeft = 0;
      running = false;
    }
  }
  btnStart.display();
  btnStop.display();
  btnClear.display();
  textSize(100);
  textAlign(CENTER, CENTER);
  fill(#9BB4FA);
  text(timeLeft, width /2, height/2);
  fill(#E6FEE8);
  text("Timer", width/2, 400);
}

void mousePressed() {
  if(btnStart.isMouseOver() == true) {
    running = true;
    startTime = millis();
  }
 
  if(btnStop.isMouseOver() == true) {
    running = false;
   
  }
    if(btnClear.isMouseOver() == true) {
    running = true;
    startTime = millis();

    }
}
