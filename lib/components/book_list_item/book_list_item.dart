import 'package:flutter/material.dart';

class BookListItem extends StatefulWidget {
  @override
  _BookListItemState createState() => _BookListItemState();
}

class _BookListItemState extends State<BookListItem> {
  static String lor="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Gravida rutrum quisque non tellus.";
  static String lorem=lor.substring(0,100);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 150.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              elevation: 4,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  child: Image.asset(
                    'assets/san_book.jpeg',
                    fit: BoxFit.cover,
                    height: 150.0,
                    width: 100.0,
                  )),
            ),
            SizedBox(width: 10.0),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Material(
                    type: MaterialType.transparency,
                    child: Text(
                      'Journey Through San Francisco',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textTheme.headline6.color,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Material(
                    type: MaterialType.transparency,
                    child: Text(
                      'Miles Curlse',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w800,
                        color: Theme.of(context).accentColor,
                      ),


                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '$lorem',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Theme.of(context).textTheme.caption.color,
                    ),
                  ),
                ] ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
