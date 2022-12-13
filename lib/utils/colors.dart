import 'dart:ui';

class FontColor {
  static Intro introColors = Intro(
    const Color(0xff666d73),
    const Color(0xffF2F2F2),
    const Color(0xff949fa6),
  );
  static   Color backgroundColor = const Color(0xff666d73);
}

class Intro {
  Color contentColor;
  Color backgroundColor;
  Color titleColor;

  Intro(this.backgroundColor, this.titleColor, this.contentColor);
}
