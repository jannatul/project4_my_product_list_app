import 'package:flutter/material.dart';
import 'Product.dart';

class ListViewItem extends StatelessWidget {
  ListViewItem({super.key,required this.listProduct,required this.onItemSelected});
 Product listProduct;
 Function(Product,BuildContext) onItemSelected;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ()=> onItemSelected(listProduct, context),
          child: Container(
            child: Card(
              child: Row(
                children:<Widget> [
                  SizedBox(
                    height: 100, width: 100,
                    child: Image.asset(listProduct.image,),),
                  Expanded(
                      child: Container(
                        color: Colors.lightGreenAccent,
                         child:

                         Column(
                      children: <Widget>[
                        Align(alignment: Alignment.centerLeft, child: Text(listProduct.name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                        Align(alignment: Alignment.centerLeft,child: Text('Description: ${listProduct.description}'),),
                        Align(alignment: Alignment.centerLeft, child: Text('Price: ${listProduct.price}'),)
                      ],
                    ),

                  ))
                ],

              ),

            ),
          ),
    );
  }
}
