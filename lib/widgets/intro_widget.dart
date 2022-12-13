import 'package:flutter/cupertino.dart';

import '../utils/colors.dart';

class IntroWidget extends StatelessWidget {
  String image;
  String content;
  String title;

  IntroWidget(this.image,
      {required this.content, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12).copyWith(top: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 54),
          // #image
          SizedBox(
            height: 323,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Image.asset(image)),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0).copyWith(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // #title
                Text(
                  title,
                  style: TextStyle(
                      color: FontColor.introColors.titleColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 7),
                // #content
                Text(
                  content,
                  style: TextStyle(
                      color: FontColor.introColors.contentColor, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
