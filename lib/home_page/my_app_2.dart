import 'package:flutter/material.dart';
import 'package:project4/home_page/Product.dart';
import 'package:project4/second_screen/product_detail_widget.dart';
import 'package:project4/home_page/List_View_item.dart';
import 'package:project4/home_page/get_product_list.dart';

class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  late List myProductList;

  @override
  void initState() {
    myProductList = createProductList();
    super.initState();
  }

  MyOnItemSelectOrTap(Product myProduct, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProductDetailWidget(detailItem: myProduct)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App Title: JANNATUL FERDAUSH',
      home: Scaffold(
          appBar:
              AppBar(title: const Text('Scaffold Appbar JANNATUL SHAHRIAR')),
          body: ListView(children: [
            ListViewItem(
                listProduct: myProductList[0],
                onItemSelected: MyOnItemSelectOrTap),
            ListViewItem(
                listProduct: myProductList[1],
                onItemSelected: MyOnItemSelectOrTap),
            ListViewItem(
                listProduct: myProductList[2],
                onItemSelected: MyOnItemSelectOrTap),
            ListViewItem(
                listProduct: myProductList[3],
                onItemSelected: MyOnItemSelectOrTap),
            ListViewItem(
                listProduct: myProductList[4],
                onItemSelected: MyOnItemSelectOrTap)
          ])),
    );
  }
}
