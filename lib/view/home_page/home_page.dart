import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_section_widget.dart';
import 'package:food_app_delivery_flutter/Component/banner_widget.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';
import 'package:food_app_delivery_flutter/model/restauran_model.dart';
import 'package:food_app_delivery_flutter/view/home_page/promotion_page.dart';
import 'package:food_app_delivery_flutter/view/home_page/restaurant_detail.dart';
import 'package:food_app_delivery_flutter/view/home_page/popular_food_menu.dart';
import 'package:food_app_delivery_flutter/Component/search_fliter_widget.dart';
import 'package:food_app_delivery_flutter/view/home_page/popular_food_menu.dart';
import 'package:food_app_delivery_flutter/view/home_page/popular_food_restaurant.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             AppBarSection(userName: 'Zen',
               pushTo: (){Navigator.pushNamed(context, PromotionPage.routeName);}
             ),
            const SearchFilterWidget(icon: Icons.filter_list,),
            BannerWidget(
               colorTop: const Color.fromRGBO(255, 126, 149, 1),
                colorBot : const Color.fromRGBO(255, 24, 67, 1),
                colorBtn: secondaryColor,
              img: Image.asset('assets/imgs/banner_Burger.png'),
            ),
            _titleSection(
                leftTitle: 'Popular Restaurant', rigthTitle: 'See more',onTap: (){Navigator.pushNamed(context,PopularFoodRestaurantMenu.routeName);}),
            _foodTileSection(),
            _titleSection(leftTitle: 'Popular Menu', rigthTitle: 'See more',onTap: (){Navigator.pushNamed(context, PopularFoodMenu.routeName);}),
            const FoodItemMenu(  foodIndex: 0,
            foodImg: 'assets/imgs/Rectangle.png',
            foodName: 'David',
            resName: 'David',
            price: '\$10'),
          ],
        ),
      ),
      backgroundColor: neutral5Color.withOpacity(0.1),
    );
  }

  
  // this widget has converted to AppBarSection Class

  // Widget _appBarSection() {
  //   return Container(
  //     margin: const EdgeInsets.only(left: 24, right: 24, top: 74),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         SizedBox(
  //           width: 40,
  //           height: 40,
  //           child: Image.asset('assets/imgs/Logo.png'),
  //         ),
  //         const SizedBox(width: 24),
  //         const Text('Hello, David!',
  //             style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26)),
  //         const Spacer(),
  //         IconButton(
  //             onPressed: () {},
  //             icon: const Icon(Icons.notifications_active, color: primaryColor))
  //       ],
  //     ),
  //   );
  // }

  
  
  Widget _titleSection(
      {required String leftTitle, required String rigthTitle,required VoidCallback onTap}) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, top: 27),
      child: Row(
        children: [
          Text(
            leftTitle,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          TextButton(
            onPressed: onTap,
            child: Text(
              rigthTitle,
              style: const TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }

  Widget _bannerSection() {
    return Container(
      margin: const EdgeInsets.only(top: 32, left: 24, right: 24),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(255, 126, 149, 1),
              Color.fromRGBO(255, 24, 67, 1)
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
                      image: Image.asset('assets/imgs/banner_Burger.png',
                              fit: BoxFit.cover)
                          .image)),
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
                      backgroundColor: secondaryColor,
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

  Widget _foodTileSection() {
    return Container(
      height: 185,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child:  ListView.builder(
           physics: const BouncingScrollPhysics(),
           scrollDirection: Axis.horizontal,
           itemCount: resList.length,
            itemBuilder: (context,index){
            return _foodTile( foodImage: resList[index].img, resName: resList[index].resName, time: resList[index].delivTime,
            );
        }
        )
    );
  }


  //this widget will use with foodtile
  // this is for foodTileSecion
  Widget _foodTile(
      {
        required Image foodImage,
      required String resName,
      required String time,
      }) {
    return InkWell(
      onTap: (){Navigator.pushNamed(context, RestaurantDetail.routeName);},
      child: Center(
        child: Container(
          height: 185,
          width: 160,
          margin: const EdgeInsets.only(right: 24),
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
                child: Image(
                  image: foodImage.image,
                ),
              ),
              const SizedBox(height: 10),
              TextButton(onPressed: (){}, child:
              Text(resName,
                  style: Theme.of(context).textTheme.caption?.copyWith(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
              ),
              const SizedBox(height: 7),
              Text(time,
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        color: neutral1Color,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
