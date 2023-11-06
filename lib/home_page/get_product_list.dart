import 'package:flutter/cupertino.dart';
import 'package:project4/home_page/Product.dart';


  createProductList() {

    List<Product> ProductList=[
     // const Product(name:'Bar Phone', description: 'First Generation of mobile phone', price: 2000, image: "assets/bm.png"),
      const Product(name:'Bar Phone', description: 'First Generation of mobile phone', price: 2000, image: "barPhone.jpg"),
      const Product(name:'Flip  Phone', description: 'First Generation of mobile phone, but different design', price: 3000, image: "assets/flipPhone.jpg"),
      const Product(name:'Sliding Phone', description: 'You can slide upper part', price: 4000, image: "assets/slidingPhone.jpg"),
      const Product(name:'Black Berry Phone', description: 'First Generation of smart phone', price: 55555, image: "assets/blackBerry.jpg"),
        const Product(name:'IPhone', description: 'Very popular smart phone', price: 90000, image: "assets/iPhone.jpg"),
    ];
    return ProductList;
}