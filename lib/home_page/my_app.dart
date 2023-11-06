import 'package:flutter/material.dart';
import 'package:project4/home_page/Product.dart';

import 'package:project4/second_screen/product_detail_widget.dart';
import 'package:project4/home_page/List_View_item.dart';
import 'package:project4/home_page/get_product_list.dart';

class MyApp extends StatelessWidget {
  List myProductList = createProductList();
  // const MyApp({super.key});
  /*
  List<Product> myProductList=[
    const Product(name:'Bar Phone', description: 'First Generation of mobile phone', price: 2000, image: 'barPhone.jpg'),
    const Product(name:'Flip  Phone', description: 'First Generation of mobile phone, but different design', price: 3000, image: 'flipPhone.jpg'),
    const Product(name:'Sliding Phone', description: 'You can slide upper part', price: 4000, image: 'slidingPhone.jpg'),
    const Product(name:'Black Berry Phone', description: 'First Generation of smart phone', price: 55555, image: 'blackBerry.jpg'),
    const Product(name:'IPhone', description: 'Very popular smart phone', price: 90000, image: 'iPhone.jpg'),
  ];
*/
  //  List productList = createProductList();
  MyOnItemSelectOrTap(Product myProduct, BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) => ProductDetailWidget(detailItem: myProduct))
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App Title: JANNATUL FERDAUSH',
      home: Scaffold(
          appBar: AppBar(
              title: const Text('Scaffold Appbar JANNATUL')),
          body: ListView(
              children: [
                ListViewItem(listProduct: myProductList[0],
                    onItemSelected: MyOnItemSelectOrTap),
                ListViewItem(listProduct: myProductList[1],
                    onItemSelected: MyOnItemSelectOrTap),
                ListViewItem(listProduct: myProductList[2],
                    onItemSelected: MyOnItemSelectOrTap),
                ListViewItem(listProduct: myProductList[3],
                    onItemSelected: MyOnItemSelectOrTap),
                ListViewItem(listProduct: myProductList[4],
                    onItemSelected: MyOnItemSelectOrTap)
              ])
      ),
    );
  }

}