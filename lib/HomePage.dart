import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:fluterappsach/component/list_category.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('image/tiemsach.jpg'),
          AssetImage('image/giaotrinh.png'),
          AssetImage('image/thieunhi.jpg'),
          AssetImage('image/chinhtri-phapluat.jpg'),
          AssetImage('image/tieuthuyet.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 2000),
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        title: Text('SACH'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Do an'),
              accountEmail: Text('doan@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            InkWell(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home'),
                  leading: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            InkWell(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            InkWell(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Cart'),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            InkWell(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Setting'),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            InkWell(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(
                    Icons.help,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image carousel
          image_carousel,
          //Padding text
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Content'),
          ),
          //Content
          content(),
        ],
      ),
    );
  }
}
