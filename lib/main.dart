import 'package:flutter/material.dart';
import 'package:bibliomania/views/home_screen/home_screen.dart';
import 'package:bibliomania/providers/home_provider.dart';
import 'package:bibliomania/providers/genre_provider.dart';
import 'package:bibliomania/providers/details_provider.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => DetailsProvider()),
        ChangeNotifierProvider(create: (_) => GenreProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static Color darkPrimary = Color(0xff1f1f10);
//  static Color darkAccent = Color(0xff1f1f10);
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
        home: HomeScreen()
        );
  }

}
