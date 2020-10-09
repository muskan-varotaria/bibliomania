import 'package:flutter/material.dart';
import 'package:bibliomania/components/book_card/book_card.dart';
class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Explore',
          ),
        ),
        body:buildBody()
    );
  }
  Widget buildBody() {
    return ListView(
      children: <Widget>[
        buildSectionTitle('Category 1'),
        buildList(),
        SizedBox(height: 10.0),
        buildSectionTitle('Category 2'),
        buildList(),
        SizedBox(height: 10.0),
        buildSectionTitle('Category 3'),
        buildList(),
      ],
    );
  }


  buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '$title',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }


  buildList() {
    return Container(
      height: 200.0,
      child: Center(
        child: ListView.builder(
          primary: false,
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: BookCard(),
            );
          },
        ),
      ),
    );
  }
}
