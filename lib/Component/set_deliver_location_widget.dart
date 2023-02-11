import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';

class SetDeliverLocationWidget extends StatelessWidget {
  const SetDeliverLocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24,left: 24,top: 10),
      alignment: Alignment.center,
      height: 130,
       child: Card(
         shape: RoundedRectangleBorder(
             side: BorderSide.none,
             borderRadius: BorderRadius.circular(20)
         ),
         child: ListTile(
           minVerticalPadding: 20,
           minLeadingWidth: 20,
           leading: Container(
             alignment: Alignment.center,
             width: 100,
             height: 200,
             decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: primaryColor.withOpacity(0.1)
             ),
             child: IconButton(
               iconSize: 32,
                 onPressed: (){},
                 icon: const Icon(Icons.location_on,
                   color: primaryColor,
                 )
             ),
           ),
           title: Container(
             margin: const EdgeInsets.only(bottom: 10),
             child: const Text('Home',
             style: TextStyle(
               fontWeight: FontWeight.w400,
               fontSize: 14,
               color: neutral5Color,
             ),
             ),
           ),
           subtitle: Container(
             margin: const EdgeInsets.only(bottom: 10),
             child: const Text('Pnhom Penh Cambodia',
             style: TextStyle(
                fontSize: 18,
               fontWeight: FontWeight.w600,
               color: Colors.black
             ),
             ),
           ),
         ),
       ),
    );
  }
}
