import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/view/home_page/restaurant_detail.dart';
import 'package:food_app_delivery_flutter/router/app_route.dart';
import 'package:food_app_delivery_flutter/view/start_app/payment_page.dart';
import 'package:food_app_delivery_flutter/view/start_app/splash_page.dart';
import 'common/color_constant.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        colorScheme:  const ColorScheme.light(
          primary: primaryColor,
          secondary: secondaryColor,
          tertiary: tertiaryColor,
        ),
        appBarTheme:  const AppBarTheme(
          color: Colors.white30,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme: const IconThemeData(color: neutral5Color),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            textStyle:const TextStyle(
              fontSize: 16,
              color: neutral5Color,
            ),
            shadowColor: Colors.transparent
          ),
        ),
      ),
      
      home: const SplashPage(),
      // initialRoute: SplashPage.routeName,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
