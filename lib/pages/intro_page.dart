import 'package:educational_app/loginpage/view/login_page.dart';
import 'package:educational_app/utils/colors.dart';
import 'package:educational_app/utils/strings.dart';
import 'package:flutter/material.dart';

import '../widgets/indecator_widget.dart';
import '../widgets/intro_widget.dart';
import 'home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);
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
      backgroundColor: FontColor.introColors.backgroundColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) => setState(() => currentIndex = page),
            children: [
              IntroWidget(
                'assets/intro/intro_image_1.png',
                content: Strings.stepOneContent,
                title: Strings.stepOneTitle,
              ),
              IntroWidget(
                'assets/intro/intro_image_2.png',
                content: Strings.stepTwoContent,
                title: Strings.stepTwoTitle,
              ),
            ],
          ),
          // #indecator
          Positioned(
            left: 24,
            bottom: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (_pageController.initialPage == currentIndex)
                  IndicatorWidget(true),
                if (_pageController.initialPage != currentIndex)
                  IndicatorWidget(false),
                if (_pageController.initialPage == currentIndex)
                  IndicatorWidget(false),
                if (_pageController.initialPage != currentIndex)
                  IndicatorWidget(true),
              ], // _buildIndicator(),
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
                            builder: (_) => const LogInPage(),
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
}