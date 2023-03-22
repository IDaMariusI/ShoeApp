import 'package:flutter/material.dart';

import 'package:shoesapp/src/widgets/widgets.dart';

class ShoePage extends StatelessWidget {
  const ShoePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomAppBar(
        text: 'For you',
      ),
    );
  }
}
