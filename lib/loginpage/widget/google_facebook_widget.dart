import 'package:flutter/material.dart';

class GoogleWidget extends StatelessWidget {
  String image;
  String title;

  GoogleWidget(this.image, {required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        color: const Color(0xff949fa6),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 24),
          Image.asset(image, width: 28),
          const SizedBox(width: 36),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),

        ],
      ),
    );
  }
}
