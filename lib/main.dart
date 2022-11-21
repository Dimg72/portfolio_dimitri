import 'package:flutter/material.dart';
import 'package:portefolio_dimitri/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes : {
      
    },
    title : 'Dimitri Portfolio',
    home : Home(),
    theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 230, 231, 232))
   );
  }
}
  


