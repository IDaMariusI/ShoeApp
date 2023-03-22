import 'package:flutter/material.dart';

import 'package:shoesapp/src/widgets/widgets.dart';

class ShoePage extends StatelessWidget {
  const ShoePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBar(text: 'For you'),
          SizedBox(height: 20),
          ShoeSizePreview(),
        ],
      ),
    );
  }
}
