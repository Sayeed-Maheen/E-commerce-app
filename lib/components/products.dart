import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Men's Blazer",
      "photo": "assets/products/blazer1.jpg",
      "old price": 450,
      "price": 400
    },
    {
      "name": "Women's Blazer",
      "photo": "assets/products/blazer2.jpg",
      "old price": 350,
      "price": 300
    }
  ];
  @override
  Widget build(BuildContext context) {
    itemCount:
    product_list.length;
    return GridView.builder(
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]["name"],
            prod_photo: product_list[index]["photo"],
            prod_old_price: product_list[index]["old_price"],
            prod_price: product_list[index]["price"],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_photo;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_photo,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              footer: Container(
                color: Colors.white60,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\$ $prod_price",
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    "\$ $prod_old_price",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(
                prod_photo,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
