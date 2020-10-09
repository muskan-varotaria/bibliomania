import 'package:flutter/material.dart';
import 'package:bibliomania/components/book_card/book_card.dart';
import 'package:bibliomania/components/book_list_item/book_list_item.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Bibliomania',
          ),
        ),
        body: buildBody()
    );
  }

  Widget buildBody() {
    return ListView(
      children: <Widget>[
        buildFirst(),
        SizedBox(height: 20.0),
        buildSectionTitle('Categories'),
        SizedBox(height: 20.0),
        buildLast(),
      ],
    );
  }

  buildFirst() {
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

  buildLast() {
    return ListView.builder(
      primary: false,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          child: BookListItem(),
        );
      },
    );
  }
}
