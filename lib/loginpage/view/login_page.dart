import 'package:educational_app/loginpage/widget/google_facebook_widget.dart';
import 'package:educational_app/utils/colors.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FontColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(height: 64),
            GoogleWidget('assets/images/google_ic.png',
                title: 'Log In with Google'),
            const SizedBox(height: 32),
            GoogleWidget('assets/images/facebook_ic.png',
                title: 'Log In with Facebook'),
            const Divider(
                height: 100,
                color: Color(0x90949fa6),
                endIndent: 36,
                indent: 36,
                thickness: 2),

          ],
        )),
      ),
    );
  }
}
