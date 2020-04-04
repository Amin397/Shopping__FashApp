import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingyou/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Women Blazer",
      "picture": "images/products/dress2.jpeg",
      "old_price": 100,
      "price": 80,
    },
    {
      "name": "pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 100,
      "price": 80,
    },
    {
      "name": "Hill",
      "picture": "images/products/hills1.jpeg",
      "old_price": 100,
      "price": 80,
    },
    {
      "name": "Shoe",
      "picture": "images/products/hills2.jpeg",
      "old_price": 100,
      "price": 80,
    },
    {
      "name": "Other",
      "picture": "images/products/dress2.jpeg",
      "old_price": 100,
      "price": 80,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_Prod(
              product_list[index]['name'],
              product_list[index]['picture'],
              product_list[index]['old_price'],
              product_list[index]['price']);
        });
  }
}

class Single_Prod extends StatelessWidget {
  final prod_name;
  final prod_pic;
  final prod_Oprice;
  final prod_price;

  Single_Prod(this.prod_name, this.prod_pic, this.prod_Oprice, this.prod_price);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                      prod_name, prod_pic, prod_Oprice, prod_price))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white,
                      child: new Row(
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            prod_name,
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.bold),
                          )),
                          new Text(
                            "\$${prod_price}",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  child: Image.asset(
                    prod_pic,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
