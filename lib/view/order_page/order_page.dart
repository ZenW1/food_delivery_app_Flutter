import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/Card_Reuse_Widget.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_section_widget.dart';
import 'package:food_app_delivery_flutter/Component/search_fliter_widget.dart';
import 'package:food_app_delivery_flutter/Component/set_deliver_location_widget.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';
import 'package:food_app_delivery_flutter/view/order_page/delivery_page.dart';
import 'package:food_app_delivery_flutter/view/order_page/order_detail_page.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);
  static const routeName = '/order';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: neutral5Color.withOpacity(0.1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarSection(userName: 'Order History'),
            const SearchFilterWidget(icon: Icons.filter_list),
            CardReuse(trial: const ProcessTrialing(),
            pushTo: (){
              Navigator.pushNamed(context, OrderDetailPage.routeName);
            },
            ),
            CardReuse(trial: const ProcessTrialing(),
            pushTo: (){
              Navigator.pushNamed(context, OrderDetailPage.routeName);
            },
            ),
            const CardReuse(trial: CompleteTrialing()),
            const CardReuse(trial: DeleteTrialing()),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget _totalPrice(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        height: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryColor,
          shape: BoxShape.rectangle,
        ),
        child: OrderPriceWidget(
          color: Colors.white,
            pushTo: () {
          Navigator.pushNamed(context, DeliveryPage.routeName);
        }));
  }
}

class OrderPriceWidget extends StatelessWidget {
  final Color color;
  final VoidCallback? pushTo;

  const OrderPriceWidget({Key? key, this.pushTo, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
              ),
              margin: const EdgeInsets.only(top: 24, bottom: 14),
              child: Row(
                children: const [
                  SizedBox(
                    width: 24,
                  ),
                  Text('Sub total',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  Spacer(),
                  Text(
                    '\$32',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 24,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 14),
              child: Row(
                children: const [
                  SizedBox(
                    width: 24,
                  ),
                  Text('Delivery Charge',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  Spacer(),
                  Text(
                    '\$5',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 24,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: const [
                  SizedBox(
                    width: 24,
                  ),
                  Text('Discount',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  Spacer(),
                  Text(
                    '\$10',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 24,
                  )
                ],
              ),
            ),
            const Text('_____________________________________',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
            const SizedBox(
              height: 14,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 14),
              child: Row(
                children: const [
                  SizedBox(
                    width: 24,
                  ),
                  Text('Total',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  Spacer(),
                  Text(
                    '\$27',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 24,
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
              margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              child: ElevatedButton(
                onPressed: pushTo,
                style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    )),
                child:  const Text(
                  'Place Your Order',
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ),
            const SizedBox(height: 20,)
          ],
      ),
    );
  }
}

// class _buttonOrdWidget extends StatelessWidget {
//   final VoidCallback? pushTo;
//   const _buttonOrdWidget({Key? key, this.pushTo}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: 55,
//       margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
//       child: ElevatedButton(
//         onPressed: pushTo,
//         style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.white,
//             textStyle: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w600,
//             )),
//         child: const Text('Place Your Order',
//           style: TextStyle(
//               color: primaryColor
//           ),
//         ),
//       ),
//     );
//   }
// }
