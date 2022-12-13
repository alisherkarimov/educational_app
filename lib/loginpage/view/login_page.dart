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
                height: 96,
                color: Color(0x90949fa6),
                endIndent: 36,
                indent: 36,
                thickness: 2),
            Form(
              child: Column(
                children: [
                  // #username
                  Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 2,
                        color: const Color(0xff949fa6),
                      ),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'user name',
                        hintStyle: const TextStyle(color: Color(0xffBFCFFF)),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 22),
                        border: InputBorder.none,
                        icon: Image.asset(
                          'assets/images/person_ic.png',
                          width: 20,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),

                  // #password
                  Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 2,
                        color: const Color(0xff949fa6),
                      ),
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      style: const TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Color(0xffBFCFFF)),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 22),
                        border: InputBorder.none,
                        icon: Image.asset(
                          'assets/images/password_ic.png',
                          width: 20,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(32.0)
                        .copyWith(top: 12, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        SizedBox(),
                        InkWell(
                          child: Text(
                            'Forgot password',
                            style: TextStyle(
                              color: Color(0xffBFCFFF),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Card(
                    color: const Color(0xff949fa6),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 8),
                      child: const Text(
                        'Log in',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Don’t have an account ? ',
                          style: TextStyle(color: Colors.white),
                        ),
                        InkWell(
                          child: Text(
                            'register here',
                            style: TextStyle(color: Color(0xffBFCFFF)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
