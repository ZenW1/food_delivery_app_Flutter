import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_section_widget.dart';
import 'package:food_app_delivery_flutter/Component/search_fliter_widget.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';

class PopularFoodMenu extends StatefulWidget {
  const PopularFoodMenu({super.key});
  static const String routeName = '/menu';
  @override
  State<PopularFoodMenu> createState() => _PopularFoodMenuState();
}

class _PopularFoodMenuState extends State<PopularFoodMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
          leadingWidth: 70,
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
          title: const Text('Popular Menu'),
        ),
        const SliverToBoxAdapter(
         child: SizedBox(height: 20,)
        ),
        SliverToBoxAdapter(
          child: Column(
            children: const [
              FoodItemMenu(
           foodIndex: 0,
            foodImg: 'assets/imgs/Rectangle.png',
            foodName: 'David',
            resName: 'David',
            price: '\$10'
        ),
         FoodItemMenu(
           foodIndex: 0,
            foodImg: 'assets/imgs/Rectangle.png',
            foodName: 'David',
            resName: 'David',
            price: '\$10'
        ),
          FoodItemMenu(
           foodIndex: 0,
            foodImg: 'assets/imgs/Rectangle.png',
            foodName: 'David',
            resName: 'David',
            price: '\$10'
        ),

          ]),
        )
        ],
      )
    );
  }
}

class FoodItemMenu extends StatelessWidget {
  const FoodItemMenu(
      {super.key,
      required this.foodIndex,
      required this.foodImg,
      required this.foodName,
      required this.resName,
      required this.price});

  final int foodIndex;
  final String foodImg;
  final String foodName;
  final String resName;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width,
      height: 88,
      child: ListTile(
        leading: Image.asset(foodImg),
        title: Text(
          resName,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          foodName,
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: neutral1Color),
        ),
        trailing: Text(
          price,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
