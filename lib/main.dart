import 'package:flutter/material.dart';
import 'package:bibliomania/components/home/home.dart';
import 'package:bibliomania/components/explore/explore.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:bibliomania/components/settings/settings.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _pageController;
  int _page = 0;

  static Color darkPrimary = Color(0xff1f1f10);
//  static Color darkAccent = Color(0xff1f1f10);
//
  static Color darkAccent = Color(0xff2ca8e2);
  static Color darkBG = Color(0xff121212);

  @override
  Widget build(BuildContext context) {
    ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      backgroundColor: darkBG,
      primaryColor: darkPrimary,
      accentColor: darkAccent,
      scaffoldBackgroundColor: darkBG,
      cursorColor: darkAccent,
      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ),
    );
    print(Theme.of(context).primaryColor);
    print(Theme.of(context).accentColor);
    return MaterialApp(
        title: "Bibliomania",
        theme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: onPageChanged,
            children: <Widget>[
              Home(),
              Explore(),
              Settings()
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: darkPrimary,
            selectedItemColor: darkAccent,
            unselectedItemColor: Colors.grey[500],
            elevation: 20,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Feather.home,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Feather.compass,
                  ),
                  label: 'Explore'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Feather.settings,
                  ),
                  label: 'Settings'
              ),
            ],
            onTap: navigationTapped,
            currentIndex: _page,
          ),
        )
        );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}
