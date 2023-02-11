import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_title_widget.dart';
import 'package:food_app_delivery_flutter/Component/set_deliver_location_widget.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';
import 'package:food_app_delivery_flutter/view/order_page/order_page.dart';
import 'package:food_app_delivery_flutter/view/order_page/payment_medthod.dart';
import 'package:food_app_delivery_flutter/view/start_app/set_location_page.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  static const routeName = '/DeliPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTitleWidget(titles: 'Delivery To').build(context),
      body: Column(
          children: [
              const SetDeliverLocationWidget(),
              const SetDeliverLocationWidget(),
             const SizedBox(height: 20),
             const Spacer(),
             Container(
               margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(16),
                 color: primaryColor
               ),
               child: OrderPriceWidget(
                 color: Colors.white,
                 pushTo: (){
                   Navigator.pushNamed(context, OrderPaymentMethod.routeName);
                 },
               ),
             ),
            const SizedBox(height: 40),
          ],
        ),

    );
  }
}
