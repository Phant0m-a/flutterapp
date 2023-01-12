import 'dart:ui';
import 'package:flutter/material.dart';
import '../modals/product.dart';

class TestProductCard extends StatelessWidget {
  const TestProductCard({Key? key, required this.cardItem}) : super(key: key);
  final Product cardItem;
  final elevation = 10.0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: InkWell(
          onTap: (){
            //TODO: add the product link here
            // basically url
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cardItem.imageSrc),
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
                      // style: MyTextStyles.headingSmallWhite,
                      style: TextStyle(color: Colors.black, fontSize: 16),
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

