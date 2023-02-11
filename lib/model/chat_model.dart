

import 'package:flutter/material.dart';
import 'dart:ui';
class ChatModel{
  final Image userImg;
  final String chatUnseen;
  String? chatText;
  String? chatSubtext;

  TimeOfDay? times;

  ChatModel(
      {
      required  this.chatUnseen,
    required this.userImg,
    required this.chatText,
    required this.chatSubtext,
    required this.times});
}

List<ChatModel> chatList =[
 ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
  ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
  ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
  ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
  ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
  ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
  ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),

  ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
  ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
  ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
  ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
  ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),
  ChatModel(chatUnseen: '03', userImg: Image(image: AssetImage('assets/imgs/userImg.png')) , chatText: 'Zen', chatSubtext: 'What\'s up', times: TimeOfDay.now()),







];

