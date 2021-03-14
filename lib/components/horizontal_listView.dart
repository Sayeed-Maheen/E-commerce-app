import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: "assets/category/suit.png",
            image_name: "Suit",
          ),
          Category(
            image_location: "assets/category/jacket.png",
            image_name: "Jacket",
          ),
          Category(
            image_location: "assets/category/tshirt.png",
            image_name: "T-shirt",
          ),
          Category(
            image_location: "assets/category/jeans.png",
            image_name: "Jeans",
          ),
          Category(
            image_location: "assets/category/womanclothes.png",
            image_name: "Dress",
          ),
          Category(
            image_location: "assets/category/shoes.png",
            image_name: "Shoes",
          ),
          Category(
            image_location: "assets/category/makeup.png",
            image_name: "Makeup",
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_name;
  Category({this.image_location, this.image_name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                height: 80.0,
                width: 100.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_name,
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                ),
              )),
        ),
      ),
    );
  }
}
