import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/restaurant_item_card.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';
import 'package:food_app_delivery_flutter/model/restauran_model.dart';
import 'package:food_app_delivery_flutter/view/home_page/home_page.dart';
import 'dart:math' as math;

import 'package:food_app_delivery_flutter/Component/search_fliter_widget.dart';
import 'package:food_app_delivery_flutter/view/home_page/restaurant_detail.dart';

class PopularFoodRestaurantMenu extends StatelessWidget {
  const PopularFoodRestaurantMenu({Key? key}) : super(key: key);
   static const String routeName = '/resMenu';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
        slivers: [
        SliverAppBar(
          leadingWidth: 70,
          floating: false,
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
          title: const Text('Popular Restaurant'),
        ),
         const _searchSectionCustomeWidget(),
        SliverPadding(
           padding: const EdgeInsets.all(24),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              childAspectRatio: 0.8,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index){
                  return  InkWell(
                    onTap: (){Navigator.pushNamed(context, RestaurantDetail.routeName);},
                    child: RestaurantItemCard(
                     resName: ' ${resList[index].resName}',
                     foodImage: resList[index].img,
                     time: resList[index].delivTime),
                  );
                },
                childCount: resList.length
              )
          ),
        )
      ],
    ));
  }
}

class _searchSectionCustomeWidget extends StatelessWidget {
  const _searchSectionCustomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
       delegate: _TopSearchCustomAppBarDelegate(
          minHeight: 100,
          maxHeight: 100,
          child: const SearchFilterWidget(icon: Icons.filter_list),
       ),
    );
  }
}

class _TopSearchCustomAppBarDelegate extends SliverPersistentHeaderDelegate {
  _TopSearchCustomAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(_TopSearchCustomAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

