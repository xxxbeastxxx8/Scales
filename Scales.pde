void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  boolean shift = true;
  for (int y = 495; y >= -25; y-=30) //8 rows
  {
    for (int x = 10; x <= 505; x+=60) //8 rows
    {
      if(shift == true)
        scale(x+30, y);
      else
        scale(x, y);
    }
    if(shift == true)
      shift = false;
    else
      shift = true;
  }
  int diam = 0;
  float r = 0;
  noFill();
  while(diam < 90){
    stroke(r,0,0);
    ellipse(150,190,diam,diam);
    ellipse(350,190,diam,diam);
    diam+=1.5;
    r+=255/30.0;
  }
  noFill();
  stroke(0);
  strokeWeight(3);
  ellipse(150,190,92,92);
  ellipse(350,190,92,92);
  triangle(30,125,470,125,250,440);
  
  fill(188,2,2);
  strokeWeight(1);
  beginShape();
  vertex(220,300);
  vertex(280,300);
  vertex(280,475);
  vertex(250,390);
  vertex(220,475);
  endShape(CLOSE);
  fill(0);
  rect(166,298,168,2);
  System.out.println(mouseX + " , " + mouseY);
}
void scale(int x, int y) {
  fill(23, (int)(Math.random()*21)+173, 35);
  rect(x-30, y-20, 60, 20);
  bezier(x-30, y, x-12, y+60, x+12, y+60, x+30, y);
}
