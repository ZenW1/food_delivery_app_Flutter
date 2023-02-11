import 'package:flutter/material.dart';

import '../common/color_constant.dart';

class AppBarSection extends StatelessWidget {
  final String userName;
  final VoidCallback? pushTo;
  const AppBarSection({super.key, required this.userName, this.pushTo});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, top: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: InkWell(
              onTap: pushTo,
              child:  Image.asset('assets/imgs/Logo.png',),
            ),
          ),
          const SizedBox(width: 24),
           Text(userName,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 26)),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_active, color: primaryColor))
        ],
      ),
    );
  }
}