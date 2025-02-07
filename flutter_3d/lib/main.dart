import 'package:flutter/material.dart';
import 'package:flutter_3d/pages/neuMorphismBlack_White.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '3D',
      
      home: Object1(),
    );
  }
}
