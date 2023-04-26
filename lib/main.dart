import 'package:flutter/material.dart';
import 'package:store_app/modules/home_page.dart';
import 'package:store_app/modules/updated_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        //'LoginPage' : (context)=> HomePage(),         // OR
        HomePage.id : (context)=> HomePage(),
        UpdateProductPage.id : (context)=> UpdateProductPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}


