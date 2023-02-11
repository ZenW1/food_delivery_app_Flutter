
import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_title_widget.dart';
import 'package:food_app_delivery_flutter/Component/button_widget.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';
import 'package:food_app_delivery_flutter/view/start_app/sign_up_page.dart';
import 'package:food_app_delivery_flutter/view/start_app/signin_page.dart';
import 'package:food_app_delivery_flutter/view/start_app/upload_photo_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  static const routeName = '/payment';
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarTitleWidget(titles: 'Payment method').build(context),
      body: Container(
        child: Column(
          children: [
            _buildPaymentMethod(context, img: 'assets/imgs/pay2.png',click: (){setState(() {
              change = ! change;
            });},colorChange: change? primaryColor : Colors.white),
            _buildPaymentMethod(context, img: 'assets/imgs/pay1.png',click: (){setState(() {
              change2 = ! change2 ;
            });},colorChange: change2? Colors.white : primaryColor),
            _buildPaymentMethod(context, img: 'assets/imgs/pay3.png',click:  (){setState(() {
              change1 = ! change1;
            });},colorChange: change1? Colors.white : primaryColor),
            const Spacer(),
            ButtonReuse(text: 'Next',pushTo: (){Navigator.pushNamed(context,UploadPhotoPage.routeName);}),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
  bool change2 = true;
  bool change1 = true;
  bool change = true;

  Widget _buildPaymentMethod(BuildContext context,{required String img,VoidCallback? click,required Color colorChange }){
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: const Offset(0,3),
            color: neutral5Color.withOpacity(0.5)
          )
        ]
      ),
      height: 80,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
      child: ElevatedButton(onPressed: click, child: Image.asset('${img}'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
               color: colorChange
            )
          )
        )
      ),
    );
  }
}
