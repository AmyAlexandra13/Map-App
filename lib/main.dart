import 'package:flutter/material.dart';
import 'map.dart';


void main () =>runApp(const myApp());
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Map App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      home: const MapScreen(),
    );
  } 
}