import 'package:flutter/material.dart';

import '../common/color_constant.dart';
 class AppBarTitleWidget extends StatelessWidget {

  final String titles;
  const AppBarTitleWidget({super.key, required this.titles});

  @override
   AppBar build(BuildContext context) {
    return  AppBar(
           leadingWidth: 70,
            centerTitle: false,
            leading: Container(
                margin: const EdgeInsets.only(left: 24, top: 8, bottom: 8),
                decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: primaryColor,
                    ))),
            titleTextStyle: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            titleSpacing: 35,
            title: Text(titles),
    );
  }
}