import 'package:flutter/material.dart';
import 'Product.dart';
import 'product_detail_widget.dart';
import 'List_View_item.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 // const MyApp({super.key});
           List<Product> myProductList=[
             const Product(name:'Bar Phone', description: 'First Generation of mobile phone', price: 2000, image: 'barPhone.jpg'),
             const Product(name:'Flip  Phone', description: 'First Generation of mobile phone, but different design', price: 3000, image: 'flipPhone.jpg'),
             const Product(name:'Sliding Phone', description: 'You can slide upper part', price: 4000, image: 'slidingPhone.jpg'),
             const Product(name:'Black Berry Phone', description: 'First Generation of smart phone', price: 55555, image: 'blackBerry.jpg'),
             const Product(name:'IPhone', description: 'Very popular smart phone', price: 90000, image: 'iPhone.jpg'),
           ];

 void MyOnItemSelectOrTap(Product myProduct,BuildContext context){
 Navigator.push(context,
     MaterialPageRoute(builder: (context)=>ProductDetailWidget(detailItem: myProduct)));
 }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App Title: JANNATUL FERDAUSH',
      home: Scaffold(
        appBar: AppBar(title: const Text('Scafflod Appbar JANNATUL FERDAUSH') ),
        body: Row(
          children: [
            Expanded(child: ListViewItem(productList: myProductList, onItemSelectOrTap: MyOnItemSelectOrTap)),

          ],
        ) ,
      ),


    );
  }
}
