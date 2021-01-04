UnicodeToChar utc;
PFont font;

void setup() {
  size(400, 800);
  //pixelDensity(2);
  //smooth();
  font = createFont("SourceHanSerifSC-Bold", 24, true);

  // CJK 扩展 B
  utc = new UnicodeToChar(font, "3400", "4DB5", true, 300);

  // 日文片假名
  //utc = new UnicodeToChar(font, "30A0", "30FF", false, 100);

  // 国际音标扩展
  //utc = new UnicodeToChar(font, "0250", "02AF", false, 100);

  // 基本拉丁文
  //utc = new UnicodeToChar(font, "0020", "007F", false, 100);

  // 几何图形
  //utc = new UnicodeToChar(font, "25A0", "25FF", true, 300);

  // 数学运算符
  //utc = new UnicodeToChar(font, "2200", "22FF", true, 300);
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
}

void keyPressed() {
  if (key == 's')
    saveFrame("output/" + nf(frameCount, 3) + ".png");
}
