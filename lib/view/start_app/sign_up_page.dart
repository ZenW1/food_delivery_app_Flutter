import 'package:flutter/material.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';
import 'package:food_app_delivery_flutter/view/home_page/home_page.dart';
import 'package:food_app_delivery_flutter/view/main_page.dart';
import 'package:food_app_delivery_flutter/view/start_app/signin_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const String routeName = '/signUpPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
      backgroundColor: Colors.white,
    );
  }
}  

Widget _buildBody(BuildContext context) {
  return  SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Material(
              color: Colors.white,
              elevation: 0,
              child: Image.asset(
                'assets/imgs/app_logo.png',
              ),
            )),
        const SizedBox(height: 18),
        const Text(
          'Sign Up your account',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 23,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 24),
        const TextFieldEmailSignUp(),
        const TextFieldPassword(),
        CheckBox(),
         const SigninButton(text: 'Sign Up',),
        const SizedBox(height: 12),
        const Text(
          'Forget Password',
          style: TextStyle(
              color: primaryColor, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 24),
        const Text(
          'or continue with',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 12),
        const FbGoogle(),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,// this is for bottom letter
          children: [
            Text('Already have an account?',
            style: TextStyle(
              color: neutral5Color.withOpacity(0.8),
              fontWeight: FontWeight.w600
            ),
            ),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, SigninPage.routeName);
            },
                child: const Text('Sign in',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w600
                ),)
            )
          ],
        )
      ],
    ),
  );
}

String pic = 'assets/imgs/Required Asterisk.png';

class TextFieldEmailSignUp extends StatelessWidget {
  const TextFieldEmailSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(left: 48),
          child: RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                  children: [
                const TextSpan(text: 'Email'),
                WidgetSpan(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                  child: Image(image: AssetImage(pic)),
                ))
              ])),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                    color: neutral5Color.withOpacity(0.5))
              ]),
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Email or Phone number',
              hintStyle: Theme.of(context).textTheme.caption?.copyWith(
                  fontSize: 16,
                  color: neutral5Color.withOpacity(0.4),
                  fontWeight: FontWeight.w600),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: neutral5Color.withOpacity(0.2))),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                  borderSide: BorderSide(
                      color: neutral5Color.withOpacity(0.2), width: 1)),
            ),
          ),
        ),
      ],
    );
  }
}

class TextFieldPassword extends StatelessWidget {
  const TextFieldPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(left: 48),
          child: RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                  children: [
                const TextSpan(text: 'Password'),
                WidgetSpan(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                  child: Image(image: AssetImage(pic)),
                ))
              ])),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                    color: neutral5Color.withOpacity(0.5))
              ]),
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.visibility)),
              hintText: 'Password',
              hintStyle: Theme.of(context).textTheme.caption?.copyWith(
                  fontSize: 16,
                  color: neutral5Color.withOpacity(0.4),
                  fontWeight: FontWeight.w600),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: neutral5Color.withOpacity(0.2))),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                  borderSide: BorderSide(
                      color: neutral5Color.withOpacity(0.2), width: 1)),
            ),
          ),
        ),
      ],
    );
  }
}

class CheckBox extends StatefulWidget {
  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Checkbox(
            hoverColor: primaryColor,
            activeColor: primaryColor,
            side: const BorderSide(color: primaryColor, width: 2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            value: _isChecked,
            onChanged: (bool? _checked) {
              setState(() {
                _isChecked = _checked;
              });
            },
          ),
          const Text(
            'Remember me',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  final String text;
  const SignUpButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      child: ElevatedButton(
        onPressed: () {

        },
        style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor.withOpacity(0.4),
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            )),
        child:Text(text),
      ),
    );
  }
}

class FbGoogle extends StatelessWidget {
  const FbGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            width: 170,
            height: 57,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: BorderSide(
                      color: neutral5Color.withOpacity(0.1), width: 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: Colors.white70,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 24,
                      child: Image.network(
                          'https://www.freepnglogos.com/uploads/facebook-logo-icon/facebook-logo-icon-facebook-icon-png-images-icons-and-png-backgrounds-1.png'),
                    ),
                    const SizedBox(width: 5),
                    const Text('Facebook',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ],
                )),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
            width: 170,
            height: 57,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: BorderSide(
                      color: neutral5Color.withOpacity(0.1), width: 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: Colors.white70,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                      height: 24,
                      child: Image.network(
                          'https://companieslogo.com/img/orig/GOOG-0ed88f7c.png?t=1633218227'),
                    ),
                    const SizedBox(width: 5),
                    const Text('Facebook',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
