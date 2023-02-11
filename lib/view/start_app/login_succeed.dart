import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/button_widget.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';
import 'package:food_app_delivery_flutter/view/main_page.dart';

class LoginSucceed extends StatelessWidget {
  const LoginSucceed({Key? key}) : super(key: key);

  static const routeName = '/loginSucceed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              alignment: Alignment.center,
              child: Image.asset('assets/imgs/congratImg.png'),
            ),
            const SizedBox(height: 35,),
            const Text('Congrats',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: primaryColor
            ),
            ),
            const SizedBox(height: 24,),
            const Text('Profile is ready to use',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black
                ),
            ),
            const Spacer(),
            ButtonReuse(text: 'Go homepage', pushTo: (){Navigator.pushNamed(context, MainPage.routeName);}),
            const SizedBox(height: 48)
          ],
        ),
      ),
    );
  }
}
