import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_title_widget.dart';
import 'package:food_app_delivery_flutter/Component/banner_widget.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';

class PromotionPage extends StatelessWidget {
  const PromotionPage({Key? key}) : super(key: key);

   static const routeName = '/promoPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTitleWidget(titles: 'Promo').build(context),
      body: Container(
        child: _listBanner(),
      ),
    );
  }

  Widget _listBanner(){
    return ListView.builder(
      itemCount: 1,
        itemBuilder: (context,index){
          return Column(
             children: [
               BannerWidget(
                   colorTop :const Color.fromRGBO(255, 126, 149, 1),
                   colorBot: const Color.fromRGBO(255, 24, 67, 1),
                   colorBtn: secondaryColor,
                 img:  Image.asset('assets/imgs/banner_Burger.png'),
               ),
               BannerWidget(
                   colorBot: const Color.fromRGBO(255, 184, 0, 1),
                   colorTop: const Color.fromRGBO(255, 218, 123, 1),
                   colorBtn: primaryColor,
                   img: Image.asset('assets/imgs/pizzaBan.png'),
               ),
               BannerWidget(
                   colorTop: const Color.fromRGBO(16, 235, 137, 1),
                   colorBot: const Color.fromRGBO(30, 200, 123, 1),
                  colorBtn: secondaryColor,
                 img: Image.asset('assets/imgs/pizzaBan.png'),
               )
             ],
          );
        }
    );
  }
}
