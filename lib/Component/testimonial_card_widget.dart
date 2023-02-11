import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';
import 'package:food_app_delivery_flutter/view/home_page/testimonial_review_page.dart';

class TestiCardWidget extends StatelessWidget {
  final String name;
  final String img;
  final String date;
  final String cmt;
  final IconData icon;
  const TestiCardWidget({Key? key, required this.name, required this.img, required this.date, required this.cmt, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 5),
      decoration: const BoxDecoration(
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(16)
        ),
        child: ListTile(
          onTap: (){Navigator.pushNamed(context, TestiReviewPage.routeName);},
          minVerticalPadding: 12,
          minLeadingWidth: 10,
          leading: CircleAvatar(
            maxRadius: 30,
            backgroundImage: Image.asset(img).image,
          ),
          title: Text(name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),
          ),
          subtitle: Container(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Text(date,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: neutral5Color
                ),
                ),
                const SizedBox(height: 5),
                Text(cmt,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  ),
                )
              ],
            ),
          ),
          trailing: Container(
            width: 50,
            height: 33,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: primaryColor
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(icon,color: Colors.white,),
                const Text('5',
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
