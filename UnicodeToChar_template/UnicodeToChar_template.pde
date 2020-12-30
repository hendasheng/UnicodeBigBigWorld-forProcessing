UnicodeToChar utc;
PFont font;

void setup() {
  size(800, 800);
  // 替换为你喜欢的字体
  font = createFont("SourceHanSerifSC-Bold", 18, true);
  //utc = new UnicodeToChar(font, "3400", "4DB5");
  utc = new UnicodeToChar(font, "3400", "4DB5", 100);

  println(utc.valueArray.length);
}

void draw() {
  // 开始你的表演  
}
