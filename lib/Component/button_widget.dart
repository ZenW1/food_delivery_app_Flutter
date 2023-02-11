import 'package:flutter/material.dart';

import '../common/color_constant.dart';
import '../view/main_page.dart';

class ButtonReuse extends StatelessWidget {
  final String text;
  final VoidCallback pushTo;
  const ButtonReuse({Key? key, required this.text,required this.pushTo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      child: ElevatedButton(
        onPressed: pushTo,
        style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            )),
        child: Text(text),
      ),
    );
  }
}