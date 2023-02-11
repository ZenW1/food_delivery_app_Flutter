import 'package:flutter/material.dart';

import '../common/color_constant.dart';


class CardReuse extends StatelessWidget {
  final Widget? trial;
  final VoidCallback? pushTo;
  const CardReuse({Key? key, this.trial, this.pushTo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24,left: 24,top: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        ),
        child: ListTile(
          onTap: pushTo,
          minLeadingWidth: 20,
          minVerticalPadding: 8,
          leading: Container(
            height: 75,
            width: 75,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child:  Image.asset('assets/imgs/Amok_khmer.png',fit: BoxFit.cover,),
            ) ,
          ),
          title: const Text('Amok',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black
            ),
          ),
          subtitle: Container(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 5),
                Text('Lovy Food',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: neutral5Color
                  ),
                ),
                SizedBox(height: 5),
                Text('\$10',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                  ),
                )
              ],
            ),
          ),
          trailing: trial ,
        ),
      ),
    );
  }
}

class ProcessTrialing extends StatelessWidget {
  const ProcessTrialing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:15,right: 10),
      height: 25,
        width: 90,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(35, 167, 87, 1)
      ),
      child: const Text(
        'Process',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Colors.white
        ),
      ),
    );
  }
}

class DeleteTrialing extends StatelessWidget {
  const DeleteTrialing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:15,right: 10),
      height: 25,
      width: 90,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(218, 20, 20, 1)
      ),
      child: const Text(
        'Cancel',
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.white
        ),
      ),
    );
  }
}

class CompleteTrialing extends StatelessWidget {
  const CompleteTrialing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:15,right: 10),
      height: 25,
      width: 90,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(46, 90, 172, 1)
      ),
      child: const Text(
        'Cancel',
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.white
        ),
      ),
    );
  }
}



class PlusMinusTrialing  extends StatelessWidget {
  const PlusMinusTrialing ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       alignment: Alignment.center,
        width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              alignment: Alignment.centerLeft,
              height: 28,
              width: 28,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: primaryColor.withOpacity(0.1)
            ),
            child:IconButton(
              padding: const EdgeInsets.only(bottom: 1),
                alignment: Alignment.center,
                onPressed: (){}, 
                icon: const Icon(Icons.remove,
                  color: primaryColor,)
            )
          ),
          const SizedBox(width: 5),
          const Text('1',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16
            ),
          ),
          const SizedBox(width: 5),
          Container(
            alignment: Alignment.center,
            height: 28,
              width: 28,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: primaryColor.withOpacity(0.1)
              ),
              child:IconButton(
                  padding: const EdgeInsets.only(bottom: 1),
                  onPressed: (){},
                  icon: const Icon(Icons.add,
                    color: primaryColor,)
              )
          ),
        ],
      ),
    );
  }
}

class _favoriteIcon extends StatelessWidget {
  const _favoriteIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 32,
      height: 32,
      child: const Icon(Icons.favorite,color: primaryColor,),
    );
  }
}

