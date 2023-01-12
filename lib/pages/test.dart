 import 'package:flutter/material.dart';

import '../constants/images.dart';

class FranchiseItem {
  const FranchiseItem(
      {required this.title,
      required this.image,
      required this.overlayColor,
      required this.navigator});
  final String title;
  final String image;
  final Color overlayColor;
  final String navigator;
}

List<FranchiseItem> franchiseItemList = [
  FranchiseItem(
      title: 'Islamabad',
      image: islamabad,
      overlayColor: Colors.red.shade300.withOpacity(0.3),
      navigator: ''),
  FranchiseItem(
      title: 'Lahore',
      image: lahore,
      overlayColor: Colors.red.shade300.withOpacity(0.3),
      navigator: ''),
  FranchiseItem(
      title: 'Peshawar',
      image: peshawar,
      overlayColor: Colors.red.shade300.withOpacity(0.3),
      navigator: ''),
  FranchiseItem(
      title: 'Karachi',
      image: karachi,
      overlayColor: Colors.red.shade300.withOpacity(0.3),
      navigator: ''),
  FranchiseItem(
      title: 'Quetta',
      image: quetta,
      overlayColor: Colors.red.shade300.withOpacity(0.3),
      navigator: ''),
  FranchiseItem(
      title: 'Faisalabad',
      image: fasialabad,
      overlayColor: Colors.red.shade300.withOpacity(0.3),
      navigator: ''),
];

//this is model page>>

import 'dart:ui';

import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';

import '../../../model/franchise_item.dart';

class FranchiseCard extends StatelessWidget {
  const FranchiseCard({Key? key, required this.cardItem}) : super(key: key);
  final FranchiseItem cardItem;
  final elevation = 10.0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: InkWell(
          onTap: (){
            //TODO: add the franchise link here

          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cardItem.image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black12, BlendMode.srcATop),
              ),

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end  ,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                  ),
                  child: Center(
                    child: Text(
                      cardItem.title,
                      style: MyTextStyles.headingSmallWhite,
                    ),
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


//this is the card design
import 'dart:ui';

import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';

import '../../constants/images.dart';
import '../../model/franchise_item.dart';
import '../../responsive.dart';
import 'components/franchise_card.dart';

class Franchise extends StatelessWidget {
  const Franchise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          decoration: BoxDecoration(
            image:
            DecorationImage(image: AssetImage(background1), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: wDefaultPadding),
                child: Image.asset(logo, height: 100,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: wDefaultPadding*2, vertical: wDefaultPadding),
                child: GridView.count(
                  shrinkWrap: true,
                  mainAxisSpacing: wDefaultPadding *2,
                  crossAxisSpacing:  wDefaultPadding *2,
                  crossAxisCount: 3,
                  children:
                    List.generate(
                      franchiseItemList.length,
                          (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: FranchiseCard(
                          cardItem: franchiseItemList[index],
                        ),
                      ),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//this is the page where cards will display