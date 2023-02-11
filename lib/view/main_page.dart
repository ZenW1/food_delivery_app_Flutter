import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/view/chat_page/chat_page.dart';
import 'package:food_app_delivery_flutter/view/home_page/home_page.dart';
import 'package:food_app_delivery_flutter/view/order_page/order_detail_page.dart';
import 'package:food_app_delivery_flutter/view/order_page/order_page.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart'; // this is from package pub dev
import 'package:food_app_delivery_flutter/view/profile_page/profile_page.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../common/color_constant.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  static const routeName = '/mainPage';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _page = [
    HomePage(),
    const OrderPage(),
    const Chatpage(),
    const ProfilePage(),
  ];

  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_selectIndex],
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: neutral5Color.withOpacity(0.1),
        child: Container(
          height: 75,
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildBottomNavigationBar(
                  icon: Icons.home, label: 'Home', index: 0),
              _buildBottomNavigationBar(
                  icon: Icons.shopping_basket, label: 'Order', index: 1),
              _buildBottomNavigationBar(
                  icon: Icons.message, label: 'Chat', index: 2),
              _buildBottomNavigationBar(
                  icon: Icons.person, label: 'Profile', index: 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar({
    required IconData icon,
    required String label,
    required int index,
  }) {
    return InkWell(
      radius: 16,
      onTap: () {
        setState(() {
          _selectIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
        decoration: BoxDecoration(
            color: _selectIndex == index ? primaryColor.withOpacity(0.2) : Colors.white,
          borderRadius:  BorderRadius.circular(8)
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: _selectIndex == index ? Colors.red : primaryColor,
            ),
            const SizedBox(width: 12),
            if (_selectIndex == index)
              GradientText(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                gradientType: GradientType.linear,
                gradientDirection: GradientDirection.btt,
                colors: const [
                   Color.fromRGBO(255, 24, 67, 1),
                   Color.fromRGBO(255, 126, 149, 1)
                ],
              )
          ],
        ),
      ),
    );
  }
}
