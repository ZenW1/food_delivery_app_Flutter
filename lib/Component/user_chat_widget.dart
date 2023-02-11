import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/model/chat_model.dart';

import '../common/color_constant.dart';
import '../view/chat_page/user_chat_page.dart';

class UserChatWidget extends StatelessWidget {
  const UserChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
          itemExtent: 120,
          padding: const EdgeInsets.only(bottom: 10),
          shrinkWrap: true,
          itemCount: chatList.length,
          itemBuilder: (context,index){
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
          child:
              Container(
                height: 100,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          offset: const Offset(2,3),
                          spreadRadius: 1,
                          color: neutral5Color.withOpacity(0.1)
                      )
                    ]
                ),
                child: Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: ListTile(
                      onTap: (){
                        Navigator.pushNamed(context, UserChat.routeName);
                      },
                      minLeadingWidth: 40,
                      minVerticalPadding: 20,
                      enabled: true,
                      leading: Container(
                        height: 88,
                        width: 70,
                        child: CircleAvatar(
                          backgroundImage: chatList[index].userImg.image,
                        ),
                      ),
                      title: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Text('${chatList[index].chatText}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      subtitle: Text('${chatList[index].chatSubtext}',
                        style: const TextStyle(
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
                            child: Text('${chatList[index].chatUnseen}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                          const SizedBox(height: 8,),
                          Text('${chatList[index].times}')
                        ],
                      ),
                    ),
                  ),
                ),
              )

        );
      }

    );
  }
}
