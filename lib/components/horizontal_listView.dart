import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category('images/cats/tshirt.png', 'Tshirt'),
          Category('images/cats/dress.png', 'Dress'),
          Category('images/cats/formal.png', 'Formal'),
          Category('images/cats/informal.png', 'Informal'),
          Category('images/cats/jeans.png', 'Jeans'),
          Category('images/cats/shoe.png', 'Shoe'),
          Category('images/cats/accessories.png', 'Others'),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category(this.image_location, this.image_caption);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 120.0,
          child: ListTile(
            title: Image.asset(image_location,
            width: 100.0,
            height: 100.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption , style: TextStyle(fontSize: 20.0),),
            ),
          ),
        ),
      ),
    );
  }
}
