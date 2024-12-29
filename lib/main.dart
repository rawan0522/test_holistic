import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_holistic/Provider/newsprovider.dart';
import 'package:test_holistic/Screens/home.dart';
import 'package:test_holistic/Screens/newsscreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (context) => NewsProvider(),),
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}