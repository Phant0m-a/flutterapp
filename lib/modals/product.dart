import 'package:flutter/material.dart';

class Product {
  Product({
    required this.imageSrc,
    required this.title,
    required this.price,
    required this.freeDelivery,
    required this.deliveryFreeDistance,
    required this.shareLink,
    required this.shop,
  });

  // imageScr title price deliveryType deliveryFreeDistance shareLink shop
  final String imageSrc;
  final String title;
  final int price;
  final String shop;
  final bool freeDelivery;
  final int deliveryFreeDistance;
  final String shareLink;

  static List<Product> ProductList = [
    Product(
        shop: 'shop name',
        imageSrc: 'lib/assets/p1.png',
        title: 'Standard office shirt',
        price: 1200,
        freeDelivery: true,
        deliveryFreeDistance: 25,
        shareLink: 'no link'),
    Product(
        shop: 'shop name',
        imageSrc: 'lib/assets/p2.png',
        title: 'Casual jacket',
        price: 2999,
        freeDelivery: true,
        deliveryFreeDistance: 35,
        shareLink: 'no link'),
    Product(
        shop: 'shop name',
        imageSrc: 'lib/assets/p3.png',
        title: 'Casual Sweater',
        price: 1600,
        freeDelivery: true,
        deliveryFreeDistance: 35,
        shareLink: 'no link'),
    Product(
        shop: 'shop name',
        imageSrc: 'lib/assets/p4.png',
        title: 'Casual leather jacket ',
        price: 1600,
        freeDelivery: true,
        deliveryFreeDistance: 35,
        shareLink: 'no link'),
    Product(
        shop: 'shop name',
        imageSrc: 'lib/assets/p5.png',
        title: 'Casual jacket with shirt ',
        price: 3500,
        freeDelivery: true,
        deliveryFreeDistance: 35,
        shareLink: 'no link'),
  ];
}
