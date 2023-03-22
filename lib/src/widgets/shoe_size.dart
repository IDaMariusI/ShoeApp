import 'package:flutter/material.dart';

class ShoeSizePreview extends StatelessWidget {
  const ShoeSizePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        height: 430,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffFFCF53),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            //Shoe with shadow
            _ShowWithShadow(),

            //TODO: Sizes
          ],
        ),
      ),
    );
  }
}

class _ShowWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: const [
          Image(image: AssetImage('assets/imgs/azul.png')),
        ],
      ),
    );
  }
}
