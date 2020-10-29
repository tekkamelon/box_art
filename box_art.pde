void setup(){
  
  size(500,500,P3D);
  background(0);
  noFill();
  frameRate(15);//1秒間に描写する枚数
  
}

void draw(){
  //camera(mouseX, mouseY, 200, 0, 0, 0, 0, 1, 0);
  //boxの色
  float r = second()+random(0,52);
  float g = second()+random(0,52);
  float b = second()+random(0,52);
  //boxの大きさ
  float bx = random(0,75);
  float by = random(0,75);
  float bz = random(0,75);
  //translate時の座標
  float x = random(0,width);
  float y = random(0,height);
  float z = random(0,800);
  
  pushMatrix();
    translate(x,y,z);
    stroke(r,g,b);
    box(bx,by,bz);
  popMatrix();
  
  if(keyPressed == true){
    background(0);
  }
  
  if(mousePressed == true){
    exit();
  }
  
}
