import 'dart:ui';
import 'package:flutter/material.dart';
import '../modals/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.cardItem}) : super(key: key);
  final Product cardItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      //padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Container(
                height: 100,
                child: Image.asset(
                  'lib/assets/slider.PNG',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text('Casual Men Shirt'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rs. 850',
                          style: TextStyle(
                            color: Colors.red[100],
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.share_rounded,
                          color: Colors.redAccent,
                          size: 26,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.pink[100],
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(
                            'Free Delivery',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '100',
                              style: TextStyle(
                                  color: Colors.red[100],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )
                            // ,SizedBox(width: 2,),
                            ,
                            Text(
                              'km',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
