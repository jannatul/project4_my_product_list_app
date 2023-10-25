import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Product.dart';
class ProductDetailWidget extends StatelessWidget{
  final Product detailItem;
  const ProductDetailWidget({ required this.detailItem, super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
  //backgroundColor: Colors.cyanAccent,
  appBar: AppBar(title: const Text('Item Detail Page Jannatul Ferdaush'), shadowColor: Colors.lightGreenAccent,) ,
  body: Padding(
    padding:const EdgeInsets.all(20) ,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ Image.asset(detailItem.image),
        Text(detailItem.name, style: const TextStyle(fontWeight:FontWeight.bold,backgroundColor: Colors.amberAccent),),
        Text(detailItem.description, style: const TextStyle(fontWeight: FontWeight.w100,backgroundColor: Colors.limeAccent),),
        Text(detailItem.price.toString())
        
      ],
    ),
  ),
);


  }

}