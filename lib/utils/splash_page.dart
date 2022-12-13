import 'package:educational_app/pages/home_page.dart';
import 'package:educational_app/pages/intro_page.dart';
import 'package:flutter/material.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({Key? key}) : super(key: key);

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const IntroPage(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff666d73),
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 160,
        ),
      ),
    );
  }
}
