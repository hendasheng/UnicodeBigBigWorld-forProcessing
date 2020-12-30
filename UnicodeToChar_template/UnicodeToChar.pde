// 输入十六进制 unicode 编码区间，获取对应字符
// 输出字符数组

class UnicodeToChar {

  char [] valueArray;
  int total;

  int minNum;
  int maxNum;

  // 输入 16 进制编码，转换为 10 进制编码
  void transform(String hexMin, String hexMax) {
    minNum = Integer.parseInt(hexMin.substring(0), 16);
    maxNum = Integer.parseInt(hexMax.substring(0), 16);
  }

  // 传参：字体，unicode 编码区间最小值，最大值（十六进制），字符组长度
  // 手动控制字符组总量
  UnicodeToChar(PFont temp_font, String temp_hexMin, String temp_hexMax, int temp_arrayLength) {
    textFont(temp_font);
    textAlign(CENTER);
    transform(temp_hexMin, temp_hexMax);
    total = temp_arrayLength;
    valueArray = new char[total];
    for (int i = 0; i < total; i ++) {
      valueArray[i] = char(int (random(minNum, maxNum)));
    }
    println("Total: " + total);
  }

  // 传参：字体，unicode 编码区间最小值，最大值（十六进制）
  // 根据编码范围设定总量
  UnicodeToChar(PFont temp_font, String temp_hexMin, String temp_hexMax) {
    textFont(temp_font);
    textAlign(CENTER);
    transform(temp_hexMin, temp_hexMax); 
    total = maxNum - minNum;
    valueArray = new char[total];
    for (int i = 0; i < total; i ++) {
      valueArray[i] = char(int (random(minNum, maxNum)));
    }
    println("Total: " + total);
  }
}
