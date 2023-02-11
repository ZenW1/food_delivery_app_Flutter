import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_section_widget.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_title_widget.dart';
import 'package:food_app_delivery_flutter/Component/testimonial_card_widget.dart';
import 'package:food_app_delivery_flutter/model/tesimonial_review_model.dart';

class TestiReviewPage extends StatelessWidget {
  const TestiReviewPage({Key? key}) : super(key: key);

  static const routeName = '/testiPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTitleWidget(titles: 'Testimonials').build(context),
      body: Container(
        child:
            _listReviewerWidget(),
      ),
    );
  }

  Widget  _listReviewerWidget(){
    return ListView.builder(
      itemCount: listReview.length,
        itemBuilder: (context,index){
        return
       TestiCardWidget(name: listReview[index].name,
           img: listReview[index].img,
           date: listReview[index].date,
           cmt: listReview[index].cmt,
           icon: listReview[index].icon);
    });
  }
}
