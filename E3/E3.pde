/*
  把 E2 的 E2.pde 的程式碼貼進來
  將小雞加進遊戲中，小雞可以上下左右移動，
  碰到車子要回到原點。
  請參考 Chicken 裡面的方法，以及 isHit 方程。

*/
Car car ;
Chicken chicken;
final int carnum=10;
Car[]cars= new Car[carnum];

void setup (){
  size(500,500);
  
  // 創建 car 物件
  for(int i=0;i<10;i++){
  cars[i] = new Car (0,50*(i+1),random(3,5)) ;
  cars[i].reset();
  }
  chicken = new Chicken(width/2 , 0 );
}
  
void draw () {
  background(255);
for(int i=0;i<10;i++){  
  // 把車子畫出來
  cars[i].display();
  chicken.display();
  
  // 車子往前跑
  cars[i].moveForward();
  
  
  // 如果車子超過邊界了，就要回到原點。
  if (cars[i].x > width ) cars[i].reset();  
  if(chicken.y > height) chicken.reset();

  if(isHit(chicken.x, chicken.y, 40,55 , cars[i].x, cars[i].y,50 ,25)){
  chicken.reset();
  }
  //
} 
  
}


boolean isHit(float ax, float ay, float aw, float ah, float bx, float by, float bw, float bh) {
  return (
    ax+aw > bx       &&
    ax    < bx + bw  &&
    ay+ah > by       &&
    ay    < by + bh  );
}

void keyPressed() {
  if (key == CODED ) {
    switch(keyCode) {
    case UP:
       chicken.moveUp();
      break;
    case DOWN:
      chicken.moveDown();
      break;
    case LEFT:
      chicken.moveLeft();
      break;
    case RIGHT:
      chicken.moveRight();
      break;
    }
  }
}
