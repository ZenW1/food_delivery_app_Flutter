import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_title_widget.dart';
import 'package:food_app_delivery_flutter/Component/button_widget.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';
import 'package:food_app_delivery_flutter/view/main_page.dart';
import 'package:food_app_delivery_flutter/view/start_app/set_location_page.dart';
import 'package:food_app_delivery_flutter/view/start_app/signup_fill_bio_page.dart';

class ChangePhotoPage extends StatelessWidget {
  const ChangePhotoPage({Key? key}) : super(key: key);

  static const routeName = '/changePhotoPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTitleWidget(titles: 'Change your photo').build(context),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context){
    return Container(
       child: Column(
         children: [
           const TextTopWidget(text: 'This data will be displayed in your account profile for security'),
           const SizedBox(height: 20),
           Stack(
             children: [
               Container(
                 width: 250,
                 height: 250,
                 child: CircleAvatar(
                   backgroundImage: Image.asset('assets/imgs/eren.png').image,
                 ),
               ),
               Positioned(
                 bottom: 5,
                   right: 20,
                   child: Container(
                     padding: const EdgeInsets.all(10),
                     decoration: const BoxDecoration(
                       shape: BoxShape.circle,
                       color: primaryColor,
                     ),
                       child: const Icon(Icons.edit,color: Colors.white,size: 27,)
                   )
               ),
  ]),
           const Spacer(),
           ButtonReuse(text: 'Next', pushTo: (){Navigator.pushNamed(context, SetLocationPage.routeName);}),
           const SizedBox(height: 20)
         ],
       ),
    );
  }
}
