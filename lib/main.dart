import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:shoesapp/src/models/models.dart';
import 'package:shoesapp/src/pages/pages.dart';

void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ShoeSizeModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShoesApp',
      home: ShoePage(),
    );
  }
}
