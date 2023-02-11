import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/view/start_app/signin_page.dart';


class GetStartPage extends StatelessWidget {
  const GetStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  const BoxDecoration(
        image:DecorationImage(
            image: AssetImage('assets/imgs/Image.png'),
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.lighten)
        ),
      ),
      child:
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.3),
                    ]
                )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Foode',
                  style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.none)),
              const SizedBox(height: 5,),
              const Text(
                'The best food ordering app of the century',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    decoration: TextDecoration.none),
              ),
              const SizedBox(height: 24,),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SigninPage()));
                },
                style: ElevatedButton.styleFrom(),
                child: Container(
                    width: 380,
                    height: 55,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
                    child:const  Text('Next')),
              ),
              const SizedBox(
                height: 75,
              )
            ],
          ),
        ],
      ),

    );
  }
}
