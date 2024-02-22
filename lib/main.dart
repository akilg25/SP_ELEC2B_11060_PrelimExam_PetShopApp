import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cat_provider.dart';
import 'homePage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CatProvider(),
      child: PetStoreApp(),
    ),
  );
}

class PetStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}