import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingyou/components/products.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_picture;
  final product_details_Oprice;
  final product_details_price;

  ProductDetails(this.product_details_name, this.product_details_picture,
      this.product_details_Oprice, this.product_details_price);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(widget.product_details_name),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            height: 350.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(
                  widget.product_details_picture,
                  fit: BoxFit.fitHeight,
                ),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_details_name,
                    style:
                        TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(
                        "${widget.product_details_Oprice}" + " \$",
                        style: TextStyle(
                            color: Colors.black54,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 24.0),
                      )),
                      Expanded(
                          child: new Text(
                        "${widget.product_details_price}" + " \$",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text('Size'),
                          content: new Text('Choose the size'),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text('close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                height: 50.0,
                elevation: 0.3,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        'Size',
                        style: TextStyle(fontSize: 20.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text('Color'),
                          content: new Text('Choose the Color'),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text('close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                height: 50.0,
                elevation: 0.3,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        'Color',
                        style: TextStyle(fontSize: 20.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text('Quentity'),
                          content: new Text('Choose the quentity'),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text('close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                height: 50.0,
                elevation: 0.3,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        'Qty',
                        style: TextStyle(fontSize: 20.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ))
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0)),
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.green,
                height: 50.0,
                elevation: 0.3,
                textColor: Colors.white,
                child: new Text(
                  'Bye Now',
                  style: TextStyle(fontSize: 30.0),
                ),
              )),
              new IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                    size: 30.0,
                  ),
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 30.0,
                  ),
                  onPressed: () {}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text(
              'Product details',
              style: TextStyle(fontSize: 26.0, color: Colors.black),
            ),
            subtitle: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum"
              " has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a"
              " galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,"
              " but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the"
              " 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop"
              " publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product name',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: new Text(widget.product_details_name,
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product brand',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: new Text('Brand X',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product condition',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: new Text(
                  'New',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Divider(),
          new ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Similar products',
                  style: TextStyle(fontSize: 26.0, color: Colors.black)),
            ),
            subtitle: new Container(
              height: 360.0,
              child: Similar_products(),
            ),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
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
