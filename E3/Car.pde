/*
  把 E2 完成的 Car 程式碼貼進來
*/
class Car{
float x;
float y;
int carnum;
float speed;
PImage img;

Car(float x,float y, float speed){
  this.x=x;
  this.y=y;
  img=loadImage("car.png");
  this.speed=speed;
}
  
  void reset(){
    x=-img.width;
  }
void display(){
   image(img,x,y); 
  }
 void moveForward(){
    x+=speed;
  }
}
