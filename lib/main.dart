import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//custom imports
import 'package:fashion_emporium/components/horizontal_listView.dart';
import 'package:fashion_emporium/components/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/images/cloth.jpg"),
          AssetImage("assets/images/girl_maroon.jpg"),
          AssetImage("assets/images/girl_shop.jpg"),
          AssetImage("assets/images/man_black.jpg"),
          AssetImage("assets/images/man_blue.jpg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 8.0,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.pink,
          title: Text("Fashion Emporium"),
          actions: [
            new IconButton(icon: Icon(Icons.search), onPressed: () {}),
            new IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
          ]),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            //header part
            new UserAccountsDrawerHeader(
              accountName: Text("Sayeed Hassan"),
              accountEmail: Text("sayeed.sid247@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.pink),
            ),

            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home page"),
                leading: Icon(
                  Icons.home,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My orders"),
                leading: Icon(
                  Icons.shopping_cart,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(
                  Icons.dashboard,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My account"),
                leading: Icon(
                  Icons.person,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                ),
              ),
            )
          ],
        ),
      ),
      body: new ListView(
        children: [
          image_carousel,
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text("Categories",
                style: new TextStyle(fontSize: 20.0, color: Colors.black)),
          ),

          //horizontal listView
          HorizontalListView(),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: new Text("Available products",
                style: new TextStyle(fontSize: 20.0, color: Colors.black)),
          ),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
