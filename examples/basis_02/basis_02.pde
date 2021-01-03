UnicodeToChar utc;
PFont font;

void setup() {
  size(800, 800);
  //pixelDensity(2);
  //smooth();
  font = createFont("SourceHanSerifSC-Bold", 18, true);
  utc = new UnicodeToChar(font, "30A0", "30FF", false, 100);
}

void draw() {
  clear();
  for (int i = 0; i < utc.valueArray.length; i++) {
    int num = int(sqrt(utc.valueArray.length) + 1);
    float itemOffset =  80;
    float globalOffset = 40;
    float x = i % num * itemOffset + globalOffset;
    float y = i / num * itemOffset + globalOffset;
    text(utc.valueArray[i], x, y);
  }
  //println(mouseX);
}
