import 'package:flutter/material.dart';

class IndicatorWidget extends StatelessWidget {
  bool isActive;

  IndicatorWidget(this.isActive, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
