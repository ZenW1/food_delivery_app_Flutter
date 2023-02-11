

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/view/home_page/promotion_page.dart';
import 'package:food_app_delivery_flutter/view/home_page/restaurant_detail.dart';
import 'package:food_app_delivery_flutter/view/home_page/testimonial_review_page.dart';
import 'package:food_app_delivery_flutter/view/start_app/change_photo_page.dart';
import 'package:food_app_delivery_flutter/view/chat_page/call_page1.dart';
import 'package:food_app_delivery_flutter/view/chat_page/call_page2.dart';
import 'package:food_app_delivery_flutter/view/chat_page/chat_page.dart';
import 'package:food_app_delivery_flutter/view/chat_page/user_chat_page.dart';
import 'package:food_app_delivery_flutter/view/home_page/filter_menu_widget.dart';
import 'package:food_app_delivery_flutter/view/home_page/home_page.dart';
import 'package:food_app_delivery_flutter/view/start_app/login_succeed.dart';
import 'package:food_app_delivery_flutter/view/main_page.dart';
import 'package:food_app_delivery_flutter/view/order_page/delivery_page.dart';
import 'package:food_app_delivery_flutter/view/order_page/order_detail_page.dart';
import 'package:food_app_delivery_flutter/view/order_page/order_page.dart';
import 'package:food_app_delivery_flutter/view/order_page/payment_medthod.dart';
import 'package:food_app_delivery_flutter/view/start_app/payment_page.dart';
import 'package:food_app_delivery_flutter/view/home_page/popular_food_restaurant.dart';
import 'package:food_app_delivery_flutter/view/start_app/set_location_page.dart';
import 'package:food_app_delivery_flutter/view/start_app/sign_up_page.dart';
import 'package:food_app_delivery_flutter/view/start_app/signin_page.dart';
import 'package:food_app_delivery_flutter/view/start_app/signup_fill_bio_page.dart';
import 'package:food_app_delivery_flutter/view/start_app/splash_page.dart';
import 'package:food_app_delivery_flutter/view/home_page/popular_food_menu.dart';
import 'package:food_app_delivery_flutter/view/start_app/upload_photo_page.dart';

Route<RouteSettings> onGenerateRoute(RouteSettings settings){
   var arg =  settings.arguments;
   switch(settings.name){

     case MainPage.routeName :
      return MaterialPageRoute(builder: (context) => MainPage(),);
      
     case HomePage.routeName :
       return MaterialPageRoute(
           builder: (context) =>  HomePage());

     case PromotionPage.routeName :
       return MaterialPageRoute(builder: (context) => PromotionPage());

     case SplashPage.routeName :
       return MaterialPageRoute(builder: (context) => const SplashPage());

     case SigninPage.routeName :
      return MaterialPageRoute(builder: (context) => const SigninPage());
      
      case SignUpPage.routeName:
        return MaterialPageRoute(builder: (context) => const SignUpPage());

     case FillBioPage.routeName :
       return MaterialPageRoute(builder: (context) => FillBioPage());

     case PaymentPage.routeName :
       return MaterialPageRoute(builder: (context) => const PaymentPage());

     case UploadPhotoPage.routeName :
       return MaterialPageRoute(builder: (context) => const UploadPhotoPage());

     case ChangePhotoPage.routeName :
       return MaterialPageRoute(builder: (context) => const ChangePhotoPage());

     case SetLocationPage.routeName :
       return MaterialPageRoute(builder: (context) => const SetLocationPage());

     case LoginSucceed.routeName:
       return MaterialPageRoute(builder: (context) => LoginSucceed());

     case FilterMenuPage.routeName :
       return MaterialPageRoute(builder: (context) => FilterMenuPage());

       // this is all router in  router page
     case OrderDetailPage.routeName :
       return MaterialPageRoute(builder: (context) => OrderDetailPage());
     case  OrderPage.routeName :
       return MaterialPageRoute(builder: (context) => const OrderPage());

     case DeliveryPage.routeName :
       return MaterialPageRoute(builder: (context) => const DeliveryPage());

     case OrderPaymentMethod.routeName :
       return MaterialPageRoute(builder: (context) => const OrderPaymentMethod());

     // router for userchat  in chat page
     case UserChat.routeName :
       return MaterialPageRoute(builder: (context) => UserChat());

     case Chatpage.routeName :
       return MaterialPageRoute(builder: (context) => const Chatpage());

     case CallPage1.routeName :
       return MaterialPageRoute(builder: (context) => CallPage1());

     case Callpage2.routeName :
       return MaterialPageRoute(builder: (context) => Callpage2());

    case PopularFoodRestaurantMenu.routeName :
        return MaterialPageRoute(builder: (context) => const PopularFoodRestaurantMenu(),);

     // this router will push to Restaurant detail

     case RestaurantDetail.routeName :
       return MaterialPageRoute(builder: (context) => RestaurantDetail());

     case TestiReviewPage.routeName :
       return MaterialPageRoute(builder: (context) => TestiReviewPage());

     case PopularFoodMenu.routeName:
      return MaterialPageRoute(builder: (context) => const PopularFoodMenu(),);

     default :
       return MaterialPageRoute(builder: (context) =>
           Scaffold(
             body: Center(
               child: Text('No page here ${settings.name}'),
             ),
           )
       );
   }
}