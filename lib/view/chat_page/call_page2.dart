import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/view/chat_page/call_page1.dart';
import 'package:food_app_delivery_flutter/view/chat_page/user_chat_page.dart';

import '../../Component/user_profile_widget.dart';
import '../../common/color_constant.dart';

class Callpage2 extends StatelessWidget {
  const Callpage2({Key? key}) : super(key: key);

  static const routeName = '/Callpage2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const UserProfileWidget(text: 'Zen',),
            const SizedBox(height: 24),
            const Text('2:25 mn',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: neutral5Color
              ),
            ),
            const Spacer(),
            CallButtonWidget(icon: Icons.volume_up,
              pushBack:(){Navigator.pushNamed(context, UserChat.routeName);},
              pushTo:(){ Navigator.pushNamed(context, Callpage2.routeName);},
            ),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
