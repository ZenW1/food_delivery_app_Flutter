import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_section_widget.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_title_widget.dart';
import 'package:food_app_delivery_flutter/Component/button_widget.dart';
import 'package:food_app_delivery_flutter/view/start_app/payment_page.dart';
import 'package:food_app_delivery_flutter/view/start_app/signin_page.dart';

class FillBioPage extends StatelessWidget {
   FillBioPage({super.key});
   static const routeName = '/fillBio';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  AppBarTitleWidget(titles: 'Fill in your bio',).build(context),
         body: _buildBody(context),
      );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children:  [
          TextTopWidget(text: 'This data will be displayed in your account profile for security'),
          TextFieldReuse(text: 'Full Name', subText: 'FullName', option: TextInputType.text,),
          TextFieldReuse(text: 'NickName', subText: 'NickName', option: TextInputType.text,),
          TextFieldReuse(text:  'PhoneNumber', subText: 'Phone Number',option: TextInputType.number,),
          TextFieldReuse(text: 'Gender', subText: 'Gender', option: TextInputType.multiline),
          TextFieldReuse(text: 'DateOfBirth', subText: 'August 25,1995', option: TextInputType.datetime),
          TextFieldReuse(text: 'Address', subText: 'Current Address', option: TextInputType.streetAddress),
          ButtonReuse(text: 'Next', pushTo: (){Navigator.pushNamed(context, PaymentPage.routeName);}),

        ],
      ),
    );
  }
}

class TextTopWidget extends StatelessWidget {
  final String text;
  const TextTopWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25,left: 24,right: 24),
        child: Text(text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
       
    );
  }
}


