import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/review_header_widget.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RestaurantDetail extends StatelessWidget {
  const RestaurantDetail({Key? key}) : super(key: key);

  static const routeName = '/resDetail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SlidingUpPanel(
           color: const Color.fromRGBO(244, 246, 249, 1),
         borderRadius: BorderRadius.circular(48),
          body: Align(
              alignment: Alignment.topCenter,
                  child: Image.asset('assets/imgs/restaurantBg.png')),
           panel: Center(
             child: Column(
               children: const [
                 ReviewHeaderWidget(),
               ],
             )
           ),
         backdropEnabled: true,
         backdropColor:neutral5Color.withOpacity(0.3),
         minHeight: 591,
         maxHeight: 846,
       ),
    );
  }
}
