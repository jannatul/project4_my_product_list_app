import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Product.dart';
// MasterListWidget of Project3_master_detail ~ ListViewItem of Project4_my_product_List_app
class ListViewItem extends StatelessWidget{
  
 final List<Product> productList;
  final Function(Product,BuildContext) onItemSelectOrTap;
  const ListViewItem({super.key, required this.productList,required this.onItemSelectOrTap});

  @override
  Widget build(BuildContext context) {
   return ListView.builder(
       itemCount: productList.length,
       itemBuilder:(context, indexOfListView) {
         return ListTile(
           leading: Image.asset(productList[indexOfListView].image),
           title: Text(productList[indexOfListView].name),
           subtitle: Column(children: [Text(productList[indexOfListView].description), Text(productList[indexOfListView].price.toString()) ],),
           textColor: Colors.deepPurple,


         );

       }

   );
  }
}
/*
class ListViewItem extends StatelessWidget{
   final Product item;

   final Function(Product,BuildContext) onItemSelectOrTap;

  const ListViewItem({super.key, required this.item,required this.onItemSelectOrTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> onItemSelectOrTap(item,context),

      child: Container(
        height: 120,
        child: Row(
          children: [
            SizedBox(width: 70,child: Image.asset(item.image) ),
            Expanded(   child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('NAME: ${item.name}'), Text('DESCRIPTION: ${item.description}'), Text("PRICE: ${item.price}")],

            )


            )
          ],

        ),
      ),

    );


  }
}

 */