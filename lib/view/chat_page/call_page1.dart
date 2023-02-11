import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/user_profile_widget.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';
import 'package:food_app_delivery_flutter/model/chat_model.dart';
import 'package:food_app_delivery_flutter/view/chat_page/call_page2.dart';
import 'package:food_app_delivery_flutter/view/chat_page/user_chat_page.dart';

class CallPage1 extends StatelessWidget {
  final IconData? icon;
  const CallPage1({Key? key, this.icon}) : super(key: key);

  static const routeName = '/callPage1';
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
            const Text('Ring...',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: neutral5Color
            ),
            ),
            const Spacer(),
            CallButtonWidget(icon: Icons.phone,
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

class CallButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback pushBack;
  final VoidCallback pushTo;
  const CallButtonWidget({Key? key, required this.icon, required this.pushBack, required this.pushTo, }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor.withOpacity(0.2)
          ),
          child: IconButton(onPressed: pushBack, icon:const Icon(Icons.cancel,color: primaryColor,)),
        ),
        const SizedBox(width: 24,),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color:  Color.fromRGBO(217, 255, 237, 1),
          ),
          child: IconButton(onPressed: pushTo, icon:Icon(icon,color: const Color.fromRGBO(7, 255, 144, 1))),
        ),
      ],
    );
  }
}

