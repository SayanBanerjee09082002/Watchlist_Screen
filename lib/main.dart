import 'package:flutter/material.dart';
import 'package:watchlist_screen/watchlist.dart';

void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      darkTheme:ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Watchlist(),
    );
  }
}