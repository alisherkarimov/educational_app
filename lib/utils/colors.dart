import 'dart:ui';

class FontColor {
  static Intro colors = Intro(
    const Color(0xff666d73),
    const Color(0xffF2F2F2),
    const Color(0xff949fa6),
  );
}

class Intro {
  Color backgroundColor = const Color(0xff666d73);
  Color contentColor = const Color(0xff949fa6);
  Color titleColor = const Color(0xffF2F2F2);

  Intro(this.backgroundColor, this.titleColor, this.contentColor);
}
