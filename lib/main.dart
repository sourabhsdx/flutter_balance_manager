import 'package:flutter/material.dart';
import 'package:fluttermanagebalance/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(headline5: ThemeData.dark().textTheme.headline5,
            headline4: TextStyle(color: Colors.blue),
            headline2: TextStyle(color: Colors.white, shadows: [Shadow(color: Colors.black38,offset:Offset(2, 5))],)),
        accentColor: Colors.white
      ),
      home: SplashScreen(),
    );
  }
}
