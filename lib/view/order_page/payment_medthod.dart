import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_title_widget.dart';

import '../../Component/button_widget.dart';
import '../../common/color_constant.dart';

class OrderPaymentMethod extends StatefulWidget {
  const OrderPaymentMethod({Key? key}) : super(key: key);

  static const routeName = '/paymentOrder';

  @override
  State<OrderPaymentMethod> createState() => _OrderPaymentMethodState();
}

class _OrderPaymentMethodState extends State<OrderPaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTitleWidget(titles: 'Payment methods').build(context),
      body:  Column(
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
          ButtonReuse(text: 'Next',pushTo: (){}),
          const SizedBox(height: 20,)
        ],
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
      child: ElevatedButton(onPressed: click,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                      color: colorChange
                  )
              )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(img),
              const Text('+6282******39',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
              )
            ],
          )
      ),
    );
  }
}
