private Block B1;
private Block B2;
private int counter;
private int digits;
private float steps;




void setup(){
  size(800, 600);
  digits = 9;
  steps = 100000;
  B1 = new Block(100, 20, 0, 1);
  float mass2 = pow(100, digits - 1);
  float v2 = -1 / steps;
  B2 = new Block(200, 150, v2, mass2);
  counter = 0;
  textSize(72);
}

void draw(){
  background(200);
  fill(0, 0, 0);
  text("Collisions: ", 50, 300);
  text(counter, 370, 300);
  for (int i = 0;i<steps;i++){
    if (B1.colide(B2)){
      float v1 = B1.collisions(B2);
      float v2 = B2.collisions(B1);
      B1.setv(v1);
      B2.setv(v2);
      counter++;
    }
    
    if (B1.colideWall()){
       B1.setv(-1*B1.getv());
       counter++;
    }

    fill(255, 255, 255);
    B1.update();
    B2.update();
  }
  B1.show();
  B2.show();
}
