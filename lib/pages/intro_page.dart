import 'package:educational_app/utils/colors.dart';
import 'package:educational_app/utils/strings.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
// import 'package:intro_ui_app/screens/home_screen.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  static const id = 'intro_screen';

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FontColor.colors.backgroundColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) => setState(() => currentIndex = page),
            children: [
              makePage('assets/intro/intro_image_1.png', Strings.stepOneTitle,
                  Strings.stepOneContent),
              makePage('assets/intro/intro_image_2.png', Strings.stepTwoTitle,
                  Strings.stepTwoContent),
            ],
          ),
          // #indecator
          Positioned(
            left: 24,
            bottom: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndicator(),
            ),
          ),
          // indicator
          Container(
            margin: const EdgeInsets.only(bottom: 25, right: 20, left: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      // currentIndex = 1;
                      _pageController.jumpToPage(1);
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 95,
                    decoration: BoxDecoration(
                      color: const Color(0xee232426),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),

                // #skip
                GestureDetector(
                  onTap: () {
                    if (currentIndex == 1) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const HomePage(),
                          ));
                    }
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget makePage(image, title, content) {
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
                      color: FontColor.colors.titleColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 7),
                // #content
                Text(
                  content,
                  style: TextStyle(
                      color: FontColor.colors.contentColor, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 4,
      width: isActive ? 30 : 5,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 2; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}
