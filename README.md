# Unicode 大世界
用于读取 unicode 十六进制字符集编码。通过 UnicodeToChar 类，输出对应字符集数组。
## 设置
使用 UnicodeToChar，首先要实例化一个 UnicodeToChar 对象，最终输出字符集数组 `utc.valueArray`，接下来你就可以用 `utc.valueArray` 这个字符组开始你的工作。
```java
UnicodeToChar utc;
PFont font;

void setup() {
  size(800, 800);
  font = createFont("SourceHanSerifSC-Bold", 18, true);
  utc = new UnicodeToChar(font, "3400", "4DB5");

  println(utc.valueArray.length);
}

void draw() {
    // 你的工作代码
}
```
### 传参
`utc = new UnicodeToChar(PFont font, String hexMin, String hexMax);`  
`utc = new UnicodeToChar(PFont font, String hexMin, String hexMax, int arrayTotal);`

**font:** 指定字体；  
**hexMin:** unicode 字符集编码最小值；  
**hexMan:** unicode 字符集编码最大值；  
**arrayLength:** 字符集数组长度。  
arrayTotal 为选填参数，当未传入 `arrayLength` 时, `utc.valueArray` 字符组的长度与字符集长度相等（`valueArray.length = hexMax - hexMin`）；

当传入 arrayLength 时， 如：`arrayLength = 100`，`utc.valueArray` 字符组的长度则为 100，UnicodeToChar 会在当前字符集中，随机选择 100 个字符储存到字符组中。

```java
UnicodeToChar utc;
PFont font;

void setup() {
  size(800, 800);
  font = createFont("SourceHanSerifSC-Bold", 18, true);
  utc = new UnicodeToChar(font, "3400", "4DB5");

  println(utc.valueArray.length);   // 6581
}
```
```java
UnicodeToChar utc;
PFont font;

void setup() {
  size(800, 800);
  font = createFont("SourceHanSerifSC-Bold", 18, true);
  utc = new UnicodeToChar(font, "3400", "4DB5", 100);

  println(utc.valueArray.length);   // 100
}
```
多数情况下建议传入 `arrayLength` 参数，如上方代码中传入的 "3400", "4DB5"（CJK 扩展 B 字符集）。未指定 `arrayLength` 时，默认输出字符集长度为 6581，也就是 "3400"、"4DB5" 转换为十进制之后相减的值，这个长度的数组会拖慢运行速度，如果明确需要完整字符集，则可以保持默认长度。
## 使用
本打算把它做成一个库文件，可以直接引用的那种，尝试了一下发现短期内我还没没办法实现，所以用了最简单、最粗暴、最幼稚的办法，在这里 [示例]() 复制代码到你的编辑器中，然后就开始你的表演吧。

希望你喜欢 🤗
***  

## 案例

## 关于 Unicode 
[汉字 Unicode 编码范围](https://www.qqxiuzi.cn/zh/hanzi-unicode-bianma.php)
[Unicode 13.0 字符编码表](http://www.unicode.org/charts/)