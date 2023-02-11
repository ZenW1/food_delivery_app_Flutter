import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/Card_Reuse_Widget.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_section_widget.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_title_widget.dart';
import 'package:food_app_delivery_flutter/Component/search_fliter_widget.dart';
import 'package:food_app_delivery_flutter/Component/set_deliver_location_widget.dart';
import 'package:food_app_delivery_flutter/view/order_page/delivery_page.dart';
import 'package:food_app_delivery_flutter/view/order_page/order_page.dart';

import '../../common/color_constant.dart';

class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  static const routeName = '/orderDetail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTitleWidget(titles: 'Order Detail').build(context),
      body: Container(
        child: Column(
          children: [
            const SearchFilterWidget(icon: Icons.filter_list,),
            const CardReuse(trial: PlusMinusTrialing()),
            const CardReuse(trial: PlusMinusTrialing()),
            const CardReuse(trial: PlusMinusTrialing()),
            const Spacer(),
           Container(
             margin: const EdgeInsets.symmetric(horizontal: 22),
             decoration: BoxDecoration(
               shape: BoxShape.rectangle,
               borderRadius: BorderRadius.circular(20),
               color: primaryColor,
             ),
             child:  OrderPriceWidget(color: Colors.white,
             pushTo: (){
               Navigator.pushNamed(context, DeliveryPage.routeName);
             },
             ),
           ),
            const SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}

