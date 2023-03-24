import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:shoesapp/src/models/models.dart';
import 'package:shoesapp/src/pages/pages.dart';

class ShoeSizePreview extends StatelessWidget {
  const ShoeSizePreview({
    super.key,
    this.fullScreen = false,
  });

  final bool fullScreen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!fullScreen) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const ShoeDescPage(),
            ),
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (fullScreen) ? 5 : 30,
          vertical: (fullScreen) ? 5 : 0,
        ),
        child: Container(
          height: (fullScreen) ? 410 : 430,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffFFCF53),
            borderRadius: (fullScreen)
                ? BorderRadius.circular(50)
                : const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(50),
                  ),
          ),
          child: Column(
            children: [
              _ShoeWithShadow(),
              if (!fullScreen) _ShoeSize(),
            ],
          ),
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
    final shoeModel = Provider.of<ShoeSizeModel>(context);

    return GestureDetector(
      onTap: () {
        final shoeModel = Provider.of<ShoeSizeModel>(context, listen: false);
        shoeModel.size = number;
      },
      child: Container(
        alignment: Alignment.center,
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: (number == shoeModel.size)
              ? const Color(0xffF1A23A)
              : Colors.white,
          boxShadow: [
            if (number == shoeModel.size)
              const BoxShadow(
                blurRadius: 10,
                color: Color(0xffF1A23A),
                offset: Offset(0, 5),
              ),
          ],
        ),
        child: Text(
          number.toString().replaceAll('.0', ''),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: (number == shoeModel.size)
                ? Colors.white
                : const Color(0xffF1A23A),
          ),
        ),
      ),
    );
  }
}
