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
                    prod_name ,
                    prod_pic,
                    prod_Oprice,
                    prod_price
                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0),
                        textAlign: TextAlign.center,
                      ),
                      title: Text(
                        "\$$prod_price",
                        style: TextStyle(
                            fontSize: 28.0,
                            color: Colors.pink,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "\$$prod_Oprice",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black54,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_pic,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
