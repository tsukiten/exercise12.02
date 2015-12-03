/*
  把 E2 的 E2.pde 的程式碼貼進來
  將小雞加進遊戲中，小雞可以上下左右移動，
  碰到車子要回到原點。
  請參考 Chicken 裡面的方法，以及 isHit 方程。

*/


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
      // 小雞移動
      break;
    case DOWN:
      // 小雞移動
      break;
    case LEFT:
      // 小雞移動
      break;
    case RIGHT:
      // 小雞移動
      break;
    }
  }
}
