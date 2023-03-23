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
            _ShoeWithShadow(),
            _ShoeSize(),
          ],
        ),
      ),
    );
  }
}

class _ShoeWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            right: 0,
            child: _ShoeShadow(),
          ),
          const Image(image: AssetImage('assets/imgs/azul.png')),
        ],
      ),
    );
  }
}

class _ShoeShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        height: 120,
        width: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(color: Color(0xffEAA14E), blurRadius: 40),
          ],
        ),
      ),
    );
  }
}

class _ShoeSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _ShoeSizeBox(7),
          _ShoeSizeBox(7.5),
          _ShoeSizeBox(8),
          _ShoeSizeBox(8.5),
          _ShoeSizeBox(9),
          _ShoeSizeBox(9.5),
        ],
      ),
    );
  }
}

class _ShoeSizeBox extends StatelessWidget {
  const _ShoeSizeBox(this.number);

  final double number;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          //TODO: BoxShadow(
        ],
      ),
      child: Text(
        number.toString().replaceAll('.0', ''),
        style: const TextStyle(
          color: Color(0xffF1A23A),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
