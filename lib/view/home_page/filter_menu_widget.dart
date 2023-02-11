import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_app_delivery_flutter/Component/app_bar_title_widget.dart';
import 'package:food_app_delivery_flutter/Component/search_fliter_widget.dart';
import 'package:food_app_delivery_flutter/common/color_constant.dart';
import 'package:food_app_delivery_flutter/model/chip_model.dart';

class FilterMenuPage extends StatefulWidget {
  const FilterMenuPage({Key? key}) : super(key: key);

  static const routeName = '/FilterMenu';

  @override
  State<FilterMenuPage> createState() => _FilterMenuPageState();
}

class _FilterMenuPageState extends State<FilterMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTitleWidget(titles: 'Find Your Food').build(context),
      body: _buildBody(),
    );
  }

  Widget _buildBody(){
    return Column(
      children: [
        const SearchFilterWidget(icon: Icons.filter_list,),
        _foodType(type: 'Type'),
         const ChipWidget(),
        _foodType(type: 'Location'),
        const ChipLocationWidget(),
        _foodType(type: 'Food'),
        const ChipFoodWidget(),
      ],
    );
  }

  Widget _foodType({required String type}){
    return Container(
      margin: const EdgeInsets.only(right: 24,left: 24,bottom: 15,top:30),
      alignment: Alignment.topLeft,
      child: Text(
         type,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }
}


class ChipWidget extends StatefulWidget {

 const ChipWidget({Key? key}) : super(key: key);

  @override
  State<ChipWidget> createState() => _ChipWidgetState();

}

class _ChipWidgetState extends State<ChipWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      height: 30,
      child: ListView.builder(
         physics: const ClampingScrollPhysics(),
         addAutomaticKeepAlives: true,
         shrinkWrap: false,
         scrollDirection: Axis.horizontal,
         dragStartBehavior: DragStartBehavior.start,
         itemCount: typeList.length,
          itemBuilder: (context,index){
            return Wrap(
              direction: Axis.horizontal,
              spacing: 8,
              children: [
                ChoiceChip(
                          padding: const EdgeInsets.all(5),
                          label: Text('${typeList[index].name}'),
                          elevation: 0,
                          selectedColor: typeList[index].color,
                          selected: typeList[index].isSelected,
                          side: const BorderSide(
                              color: primaryColor
                          ),
                          onSelected: (value){
                            setState(() {
                              typeList[index].isSelected =  value;
                            });
                          },
                          backgroundColor:  Colors.white,
                ),
                const SizedBox(width: 1),
              ],
            );
          }
      ),
    );
  }
}

class ChipLocationWidget extends StatefulWidget {
  const ChipLocationWidget({Key? key}) : super(key: key);

  @override
  State<ChipLocationWidget> createState() => _ChipLocationWidgetState();
}

class _ChipLocationWidgetState extends State<ChipLocationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      height: 30,
      child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          addAutomaticKeepAlives: true,
          shrinkWrap: false,
          scrollDirection: Axis.horizontal,
          dragStartBehavior: DragStartBehavior.start,
          itemCount: locationList.length,
          itemBuilder: (context,index){
            return Wrap(
              direction: Axis.horizontal,
              spacing: 8,
              children: [
                ChoiceChip(
                  padding: const EdgeInsets.all(5),
                  label: Text('${locationList[index].name}'),
                  elevation: 0,
                  selectedColor: locationList[index].color,
                  selected: locationList[index].isSelected,
                  side: const BorderSide(
                      color: primaryColor
                  ),
                  onSelected: (value){
                    setState(() {
                      locationList[index].isSelected =  value;
                    });
                  },
                  backgroundColor:  Colors.white,
                ),
                const SizedBox(width: 1),
              ],
            );
          }
      ),
    );
  }
}

class ChipFoodWidget extends StatefulWidget {
  const ChipFoodWidget({Key? key}) : super(key: key);

  @override
  State<ChipFoodWidget> createState() => _ChipFoodWidgetState();
}

class _ChipFoodWidgetState extends State<ChipFoodWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      height: 100,
      child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          addAutomaticKeepAlives: true,
          shrinkWrap: false,
          scrollDirection: Axis.horizontal,
          dragStartBehavior: DragStartBehavior.start,
          itemCount: foodList.length,
          itemBuilder: (context,index){
            return Wrap(
              direction: Axis.horizontal,
              spacing: 8,
              children: [
                ChoiceChip(
                  padding: const EdgeInsets.all(5),
                  label: Text('${foodList[index].name}'),
                  elevation: 0,
                  selectedColor: foodList[index].color,
                  selected: foodList[index].isSelected,
                  side: const BorderSide(
                      color: primaryColor
                  ),
                  onSelected: (value){
                    setState(() {
                      foodList[index].isSelected =  value;
                    });
                  },
                  backgroundColor:  Colors.white,
                ),
                const SizedBox(width: 1),
              ],
            );
          }
      ),
    );
  }
}





