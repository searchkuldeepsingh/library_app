import 'package:flutter/material.dart';
import 'package:libraryapp/MobileNumberScreen.dart';
import 'helpers/Constants.dart';

void main() {
  runApp(MaterialApp(
    home: MobileNumberScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.amber,
      accentColor: Colors.cyan[600],
    ),
  ));
}

//class LibraryApp extends StatefulWidget {
//
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: appTitle,
//      theme: ThemeData.dark(),
//
//    );
//  }
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    throw UnimplementedError();
//  }
//}
