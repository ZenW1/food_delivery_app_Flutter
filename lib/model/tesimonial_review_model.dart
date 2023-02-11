import 'package:flutter/material.dart';

class Reviewer{
  final String name;
  final String img;
  final String date;
  final String cmt;
  final IconData icon;

  Reviewer(this.name, this.img, this.date, this.cmt, this.icon);
}

List<Reviewer> listReview = [
  Reviewer( 'Eren Yaeger', 'assets/imgs/eren.png',
'December 16, 2022', 'The food is very delicious and the service is satisfying! Love it!',
Icons.star_rounded),
  Reviewer( 'Meliodas', 'assets/imgs/meliodas picture.png',
      'December 16, 2022', 'The food is very delicious and the service is satisfying! Love it!',
      Icons.star_rounded),
  Reviewer( 'Gojo Satoru', 'assets/imgs/gojo.png',
      'December 31, 2022', 'omg, this is amazing',
      Icons.star_half_rounded),
  Reviewer( 'Tanjiro', 'assets/imgs/tanjiro.png',
      'January 16, 2023', 'perfect!',
      Icons.star_rounded),
  Reviewer( 'Zetnisu', 'assets/imgs/zetnisu.png',
      'January 16, 2023', 'Wow, this is really epic',
      Icons.star_rounded),
];