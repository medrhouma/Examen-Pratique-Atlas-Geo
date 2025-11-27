import 'package:flutter/material.dart';
import 'screens/welcome_page.dart';

void main() {
  runApp(const AtlasGeoApp());
}

class AtlasGeoApp extends StatelessWidget {
  const AtlasGeoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atlas Géographique',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}