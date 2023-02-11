import 'package:flutter/material.dart';

import '../common/color_constant.dart';

class RestaurantItemCard extends StatefulWidget {
  const RestaurantItemCard({super.key, required this.resName, required this.foodImage, required this.time,this.txtColor});

  final String resName;
  final Image foodImage;
  final String time;
  final Color? txtColor;

  @override
  State<RestaurantItemCard> createState() => _RestaurantItemCardState();
}

class _RestaurantItemCardState extends State<RestaurantItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: 160,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: const Offset(0, 3),
              color: neutral5Color.withOpacity(0.2),
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: widget.foodImage,
          ),
          const SizedBox(height: 24),
          Text(widget.resName,
              style: Theme.of(context).textTheme.caption?.copyWith(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
          const SizedBox(height: 7),
          Text(widget.time,
              style: Theme.of(context).textTheme.caption?.copyWith(
                    color: widget.txtColor ,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ))
        ],
      ),
    );;
  }
}