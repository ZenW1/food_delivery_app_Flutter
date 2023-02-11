
import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/restaurant_item_card.dart';
import 'package:food_app_delivery_flutter/Component/testimonial_card_widget.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';
import 'package:food_app_delivery_flutter/model/restauran_model.dart';
import 'package:food_app_delivery_flutter/view/home_page/testimonial_review_page.dart';

class ReviewHeaderWidget extends StatelessWidget {
  const ReviewHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text('____',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: neutral5Color.withOpacity(0.2)
          ),
          )
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Container(
                 margin: const EdgeInsets.only(top: 10,bottom: 20),
                padding : const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color.fromRGBO(35, 167, 87, 1),
                  )
                ),
                child: const Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(35, 167, 87, 1),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor.withOpacity(0.2),
                ),
                child: const Icon(Icons.location_on,color: primaryColor,size: 17,),
              ),
              const SizedBox(width: 15),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor.withOpacity(0.2),
                ),
                child: const Icon(Icons.favorite_border,color: primaryColor,size: 17,),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          alignment: Alignment.centerLeft,
          child: const Text('Lovy Food Restaurant',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 23,
              color: Colors.black
            ),
          ),
        ),
        const SizedBox(height: 12,),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.1),
              ),
              child: const Icon(Icons.location_on,color: primaryColor,size: 17,),
            ),
            const Text('3km',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(width: 24),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.1),
              ),
              child: const Icon(Icons.favorite_border,color: primaryColor,size: 17,),
            ),
            const SizedBox(width: 12,),
            const Text('4.8 rating',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              ),
            ),
          ],
        ),
        const SizedBox(height: 12,),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: const Text('We are one of the best restaurants in the city of Surabaya with years of experience. We serve a lot of quality food cooked directly by professional chefs. Hope you like it!',
          textAlign: TextAlign.justify,
           style: TextStyle(
             fontWeight: FontWeight.w400,
             fontSize: 16,
           ),
          ),
        ),
      _titleSection(leftTitle: 'Popular Menu', rigthTitle: 'See More', onTap: (){}),
      _listFood(),
        _titleSection(leftTitle: 'Testimonials', rigthTitle: 'See More',
            onTap: (){Navigator.pushNamed(context, TestiReviewPage.routeName);}
        ),
        const TestiCardWidget(name: 'Eren Yaeger', img: 'assets/imgs/eren.png',
            date: 'December 16, 2022', cmt: 'The food is very delicious and the service is satisfying!',
          icon:  Icons.star_rounded),
        const TestiCardWidget(name: 'Meliodas', img: 'assets/imgs/meliodas picture.png',
            date: 'December 21, 2022', cmt: 'Extraordinary Food! love it so much!',
            icon:  Icons.star_rounded),
      ],
    );

  }


  Widget _listFood(){
    return  Container(
      height: 200,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: foodMenuList.length,
          itemBuilder: (context,index){
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: RestaurantItemCard(
                  resName: foodMenuList[index].resName,
                  foodImage: foodMenuList[index].img,
                  time: foodMenuList[index].delivTime,
                  txtColor: primaryColor,
                 ),
            );
          }
      ),
    );
  }
  Widget _titleSection(
      {required String leftTitle, required String rigthTitle,required VoidCallback onTap}) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, top: 17),
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
}
