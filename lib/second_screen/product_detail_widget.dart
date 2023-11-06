import 'package:flutter/material.dart';
import '../home_page/Product.dart';

class ProductDetailWidget extends StatelessWidget{
  final Product detailItem;
  const ProductDetailWidget({ required this.detailItem, super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
  //backgroundColor: Colors.cyanAccent,
  appBar: AppBar(title: const Text('Item Detail Page Jannatul Ferdaush'), shadowColor: Colors.lightGreenAccent,) ,
  body: Padding(
    padding:const EdgeInsets.all(16) ,
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[ Center(child: SizedBox(height: 300,child:Image.asset(detailItem.image ,),) ),
        const SizedBox(height: 10,),
        Text(detailItem.name, style: const TextStyle(fontSize: 24,fontWeight:FontWeight.bold,backgroundColor: Colors.amberAccent),),
        const SizedBox(height: 10,),
        Text(detailItem.description, style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w100,backgroundColor: Colors.limeAccent),),
        const SizedBox(height: 10,),
        Text(detailItem.price.toString(),style: const TextStyle(fontSize: 16,backgroundColor: Colors.blue, color: Colors.purple))
        
      ],
    ),
  ),
);


  }

}