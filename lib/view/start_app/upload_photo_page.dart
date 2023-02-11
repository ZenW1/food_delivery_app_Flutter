import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_title_widget.dart';
import 'package:food_app_delivery_flutter/Component/button_widget.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';
import 'package:food_app_delivery_flutter/view/start_app/change_photo_page.dart';
import 'package:food_app_delivery_flutter/view/start_app/signup_fill_bio_page.dart';

class UploadPhotoPage extends StatelessWidget {
  const UploadPhotoPage({Key? key}) : super(key: key);
  static const routeName = '/uploadPhotoPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTitleWidget(titles: 'Upload your Photo').build(context),
      body: Container(
        child: Column(
          children: [
             TextTopWidget(text: 'This data will be displayed in your account profile for security'),
            _pickPhoto(context,text: 'Take Photo',icons: Icons.camera_alt),
            _pickPhoto(context, text: 'From Gallery', icons: Icons.folder),
            Spacer(),
            ButtonReuse(text: 'Next', pushTo: (){Navigator.pushNamed(context, ChangePhotoPage.routeName);}),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Widget _pickPhoto(BuildContext context,{required String text,required IconData icons}){

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
      width: MediaQuery.of(context).size.width,
      height: 160,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0,12),
            color: neutral5Color.withOpacity(0.2)
          )
        ]
      ),
      child: ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                   padding: EdgeInsets.all(23),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor.withOpacity(0.2),
                  ),
                  child: Icon(icons,color: primaryColor,size: 32)),
              SizedBox(height: 10),
              Container(
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),
                  )
              )
            ],
          ),
      ),
    );
  }
}
