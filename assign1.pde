/* please implement your assign1 code in this file. */
PImage hp;
PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage treasure;
int h,x,y,e,f,t,r;

void setup () {
  size(640,480) ;  // must use this size.
  // your code
  hp = loadImage("img/hp.png");
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  fighter=loadImage("img/fighter.png");
  treasure=loadImage("img/treasure.png");
  h=floor(random(20,200));
  x=0;
  y=-640;
  e=floor(random(420));
  f=0;
  t=floor(random(640));
  r=floor(random(480));
  
  
}

void draw() {
  // your code
  image(bg2,x,0);
  image(bg1,x-640,0);
  x++;
  x %=640;
  //HP
  fill(#ff0000);
  rectMode(CORNERS);
  rect(5,5,h,20);
  image(hp,0,0);
  //enemy
  image(enemy,y,e);
  y%=640;
  y=y+5;
  //fighter
  image(fighter,580,260);
  //treasure
  image(treasure,t,r);
  
  
}
