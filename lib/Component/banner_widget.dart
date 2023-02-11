import 'package:flutter/material.dart';

import '../common/color_constant.dart';

class BannerWidget extends StatelessWidget {
  final Color colorTop;
  final Color colorBot;
  final Image img;
  final Color? colorBtn;
  const BannerWidget({Key? key,required this.colorTop,required this.colorBot,required this.img, this.colorBtn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32, left: 24, right: 24),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              colorTop,
              colorBot,
            ]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: img.image)
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Container(
                  child: Text('Special Deal for\nDecember',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.white,
                      )),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 120,
                  height: 40,
                  margin: const EdgeInsets.only(right: 52),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorBtn,
                    ),
                    child: const Text('Buy Now',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
