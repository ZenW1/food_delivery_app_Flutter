import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/view/home_page/filter_menu_widget.dart';
import '../common/color_constant.dart';

class SearchWidget extends StatelessWidget {
  final IconData? icon;
  const SearchWidget({super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(left: 24, right: 24, top: 30),
      child:
         TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    fillColor: neutral5Color.withOpacity(0.1),
                    filled: true,
                    hintText: 'Search',
                    hintStyle: Theme.of(context).textTheme.caption?.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      color: neutral5Color,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide:
                        BorderSide(color: neutral5Color.withOpacity(0.2))),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(
                        color: neutral5Color.withOpacity(0.2),
                      ),
    )
    )));
  }
}