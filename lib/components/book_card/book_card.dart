import 'package:flutter/material.dart';

class BookCard extends StatefulWidget {
  @override
  _BookCardState createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        elevation: 4.0,
        child: InkWell(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: Image.asset("assets/san_book.jpeg",fit: BoxFit.cover,)
//              fit: BoxFit.cover,
              ),
        ),
      ),
    );
  }
}
