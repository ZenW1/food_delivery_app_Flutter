
import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_title_widget.dart';
import 'package:food_app_delivery_flutter/view/chat_page/call_page1.dart';

import '../../common/color_constant.dart';
import '../../model/chat_model.dart';

class UserChat extends StatelessWidget {
  const UserChat({Key? key}) : super(key: key);

  static const routeName = '/userChat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const AppBarTitleWidget(titles: 'Chat').build(context),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _userCall(context),
          const SizedBox(height: 20),
          _textChatLeft(chat: 'Just order the food'),
          const SizedBox(height: 30),
          _textChatRigt(chat: 'Ok, What\'s your spicy level'),
          const SizedBox(height: 30),
          _textChatLeft(chat: 'Okay wait a minutes'),
          const Spacer(),
          replyTextField(context),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _userCall(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Container(
            height: 100,
            decoration: BoxDecoration(
                boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  offset: const Offset(2, 3),
                  spreadRadius: 1,
                  color: neutral5Color.withOpacity(0.1))
            ]),
            child: Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(16)),
                child: ListTile(
                  onTap: () {

                  },
                  minLeadingWidth: 40,
                  minVerticalPadding: 20,
                  enabled: true,
                  leading: Container(
                    height: 88,
                    width: 70,
                    child: CircleAvatar(
                      backgroundImage: chatList[0].userImg.image,
                    ),
                  ),
                  title: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      '${chatList[0].chatText}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  subtitle: const Text(
                    'online',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: neutral5Color,
                    ),
                  ),
                  trailing: Container(
                    margin: const EdgeInsets.only(right: 15),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: primaryColor.withOpacity(0.2),
                    ),
                    child: IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, CallPage1.routeName);
                        },
                        icon:  const Icon(Icons.call,color: primaryColor),
                    ),
                  ),
                )
            )
        )
    );
  }
  Widget _textChatLeft({required String chat}){
    return  Row(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20,right: 20),
          height: 50,
          decoration: BoxDecoration(
            color: neutral5Color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          alignment: Alignment.centerLeft,
          child: Text(
            '$chat',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const Spacer()
      ],
    );
  }
  Widget _textChatRigt({required String chat}){
    return  Row(
      children: [
        const Spacer(),
        Container(
          padding: const EdgeInsets.only(left: 20,right: 20),
          height: 50,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          alignment: Alignment.centerRight,
          child: Text(
            '$chat',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.white
            ),
          ),
        ),

      ],
    );
  }

  Widget replyTextField(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: TextField(
        keyboardType: TextInputType.multiline,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: 'Type message..',
          contentPadding: const EdgeInsets.symmetric(horizontal: 40,vertical: 30),
          suffixIcon: Container(
            margin: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: (){

              },
              icon: const Icon(Icons.send,color: primaryColor),
            ),
          ),
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(20),
           borderSide: BorderSide(
               color: neutral5Color.withOpacity(0.1)
           ),
         ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                color: neutral5Color.withOpacity(0.1)
            ),
          ),
        ),
      ),
    );
  }
}
