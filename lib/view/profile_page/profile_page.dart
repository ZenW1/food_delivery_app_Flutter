import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/Card_Reuse_Widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../common/color_constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: SlidingUpPanel(
         color: const Color.fromRGBO(244, 246, 249, 1),
         body: Align(
           alignment: Alignment.topCenter,
           child: Image.asset('assets/imgs/profileBack.png'),
         ),
        panel: Column(
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
            const SizedBox(height: 5),
            _topSlideWidget(),
            _userEmailWidget(),
            const SizedBox(height: 9,),
            _voucher(),
            _titleSection(leftTitle: 'Favorite', rigthTitle: 'See More', onTap: (){}),
            CardReuse(trial : _favorite()),
            CardReuse(trial : _favorite()),
            CardReuse(trial : _favorite()),
          ],
        ),
         borderRadius: const BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
         minHeight: 420,
         maxHeight: 620,
       ),
    );
  }

  Widget _topSlideWidget(){
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10,bottom: 20),
            padding : const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color.fromRGBO(255, 218, 123, 1),
                )
            ),
            child: const Text(
              'Member Gold',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(255, 218, 123, 1),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _userEmailWidget(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 100),
               alignment: Alignment.topLeft,
                child: const Text('Daniel Sebastian',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),
                ),
              ),
              const SizedBox(height: 5,),
              const Text('daniel.sebastian@yourdomain.com',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: neutral2Color
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor.withOpacity(0.2),
            ),
            child: const Icon(Icons.edit,color: primaryColor,size: 17,),
          ),
        ],
      ),
    );
  }

  Widget _voucher(){
    return Container(
      height: 68,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white
      ),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 30),
              child: Image.asset('assets/imgs/voucherImg.png')),
          const SizedBox(width: 28),
          const Text('You have 4 vouchers',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),
          )
        ],
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

  Widget _favorite(){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 20,top: 10),
      width: 32,
      height: 32,
      child: Icon(Icons.favorite,color: primaryColor,),
    );
  }
}
