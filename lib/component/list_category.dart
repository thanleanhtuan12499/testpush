import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          listcategory(
            location: 'image/content/category.png',
            caption: 'The loai',
          ),
          listcategory(
            location: 'image/content/favorite.jpg',
            caption: 'Yeu Thich',
          ),
          listcategory(
            location: 'image/content/flashsale.jpg',
            caption: 'Flash Sale',
          ),
        ],
      ),
    );
  }
}

class listcategory extends StatelessWidget {
  final String location;
  final String caption;

  listcategory({this.location, this.caption});
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
              location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Text(caption),
          ),
        ),
      ),
    );
  }
}
