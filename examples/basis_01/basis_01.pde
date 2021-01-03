UnicodeToChar utc;
PFont font;

float radius;
int total;
float theta;

void setup() {
  size(800, 800);
  //pixelDensity(2);
  //smooth();
  // 替换为你喜欢的字体
  font = createFont("SourceHanSerifSC-Bold", 16, true);
  utc = new UnicodeToChar(font, "0041", "005A", false);

  total = utc.valueArray.length;
  theta = TWO_PI/total;
  radius = 200;
}

void draw() {  
  clear();

  float r = -PI/2 + frameCount * 0.002;
  pushMatrix();
  translate(width/2, height/2);
  rotate(r);
  for (int i = 0; i < total; i ++) {
    float x = cos(i * theta) * radius;
    float y = sin(i * theta) * radius;

    pushMatrix();
    translate(x, y);
    rotate(-r);
    text(utc.valueArray[i], 0, 0);
    popMatrix();
  }
  popMatrix();
}

void keyPressed() {
  if (key == 's')
    saveFrame("output/" + nf(frameCount, 3) + ".png");
}
