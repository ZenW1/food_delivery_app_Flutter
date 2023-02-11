
import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_section_widget.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_title_widget.dart';
import 'package:food_app_delivery_flutter/Component/search_fliter_widget.dart';
import 'package:food_app_delivery_flutter/model/chat_model.dart';

import '../../Component/search_widget.dart';
import '../../Component/user_chat_widget.dart';
import '../../common/color_constant.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({Key? key}) : super(key: key);
  static const routeName ='/chat';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
      backgroundColor: neutral5Color.withOpacity(0.1),
    );
  }
  Widget _buildBody(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          const AppBarSection(userName: 'Chat'),
          const SearchWidget(),
          SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 100),
                      child:  UserChatWidget()
                    ),
                  ],
            )
          ),
        ],
      ),
    );
  }

  Widget _userChat(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 32),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(2,3),
                  spreadRadius: 1,
                  color: neutral5Color.withOpacity(0.2)
                )
              ]
            ),
            child: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ),
                child: ListTile(
                  minLeadingWidth: 40,
                  minVerticalPadding: 20,
                  enabled: true,
                  leading: SizedBox(
                    height: 88,
                    width: 70,
                    child: CircleAvatar(
                      backgroundImage: Image.network('https://www.thesprucepets.com/thmb/7TDhfkK5CAKBWEaJfez6607J48Y=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/chinese-dog-breeds-4797219-hero-2a1e9c5ed2c54d00aef75b05c5db399c.jpg',fit: BoxFit.cover).image,
                    ),
                  ),
                  title: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: const Text('David',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    ),
                  ),
                  subtitle: const Text('Hello',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: neutral5Color,
                    ),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Container(
                       width: 25,
                       height: 25,
                       alignment: Alignment.center,
                       decoration: const BoxDecoration(
                         shape: BoxShape.circle,
                         color: primaryColor,

                       ),
                       child: const Text('03',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 15,
                           fontWeight: FontWeight.w600
                         ),
                       ),
                     ),
                      const SizedBox(height: 8,),
                      const Text('hello')
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}




