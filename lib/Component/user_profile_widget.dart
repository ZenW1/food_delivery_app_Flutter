import 'package:flutter/material.dart';

import '../common/color_constant.dart';
import '../model/chat_model.dart';

class UserProfileWidget extends StatelessWidget {
  final String? text;
  const UserProfileWidget({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: CircleAvatar(
            maxRadius: 100,
            backgroundImage: Image.asset('assets/imgs/userProfileImg.png').image,
          ),
        ),
        const SizedBox(height: 28),
        Container(
          child: Text('$text',
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
