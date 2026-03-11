//Ava Manwaring|25Feb2026|Timeline
void setup() {
  size(950,400);
}
void draw() {
  background(#F0CFD9);
  drawRef();
  fill(#F0BFD9);
histEvent(100,200,"Jan 2021",true, "Joins Navarro Cheer after being dicovered at a gymnastics competetion.");
fill(#F0BFD9);
  histEvent(170,300,"May 2021",false, "Gets featured on the Netflix show Cheer.");
  fill(#F0BFD9);
  histEvent(250,200,"Jan 2022",true, "Gets signed on to Weber State Cheer team");
  fill(#F0BFD9);
  histEvent(550,300,"Dec 2023",false, "Joins the USA Olympic Cheer Team.");
  fill(#F0BFD9);
  histEvent(650,200, "Mar 2025",true, "Goes on AGT to stunt with her partner Kollin.");
  fill(#F0BFD9);
  histEvent(870,300,"Jan 2026", false, "Wins World 2026 Partner Stunt with her stunt partner Josh Hill.");
  fill(#F0BFD9);
  histEvent(760, 300,"Sept 2025",false, "Wins World Cup 2025 Partner Stunt.");
  fill(#F0BFD9);
  histEvent(890, 200,"Feb 2026",true, "Wins Daytona competetion 2026.");
}
void drawRef() {
  textAlign(CENTER);
  textSize(36);
  text("Hailey D'Lynn: Timeline",width/2,70);
  textSize(20);
  text("by Ava Manwaring",width/2,90);
  strokeWeight(5);
  line(50,250,900,250);
  textSize(16);
  text("2021",50,275);
  text("2026",900,275);
  strokeWeight(2);
  line(50,245,50,255);
  line(900,245,900,255);
  line(450,245,450,255);
}
void histEvent(int x,int y,String title, boolean top, String detail) {
  if(top==true) {
    line(x,y,x-15,y+50);
  } else{
  line(x,y,x-15,y-50);
  }
  rectMode(CENTER);
  rect(x,y,100,30,10);
    fill(0);
  text(title,x,y+5);
  if(mouseX > x-50 && mouseX < x+50 && mouseY >y-15 && mouseY <y+15) {
    text(detail, width/2, 350);
  }
 }
