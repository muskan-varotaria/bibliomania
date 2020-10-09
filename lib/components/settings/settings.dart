import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  List items;

  @override
  void initState() {
    super.initState();
    items = [
      {
        'icon': Feather.heart,
        'title': 'Favorites',
      },
      {
        'icon': Feather.download,
        'title': 'Downloads',
      }
    ];

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 10),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(
              items[index]['icon'],
            ),
            title: Text(
              items[index]['title'],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }
}
