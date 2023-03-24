import 'package:flutter/material.dart';

import 'package:shoesapp/src/widgets/widgets.dart';

class ShoeDescPage extends StatelessWidget {
  const ShoeDescPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const ShoeSizePreview(fullScreen: true),
              Positioned(
                top: 80,
                child: FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  highlightElevation: 0,
                  onPressed: () {},
                  child: const Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const ShoeDescription(
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  _PriceBuyNow(),
                  _ColorsAndMore(),
                  _LikeCartSettingsButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PriceBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        child: const Row(
          children: [
            Text(
              '\$180.0',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            OrangeButton(text: 'Buy now', height: 40.0, width: 120.0),
          ],
        ),
      ),
    );
  }
}

class _ColorsAndMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 90,
                  child: _ButtonColor(color: Color(0xffC6D642)),
                ),
                Positioned(
                  left: 60,
                  child: _ButtonColor(color: Color(0xffFFAD29)),
                ),
                Positioned(
                  left: 30,
                  child: _ButtonColor(color: Color(0xff2099F1)),
                ),
                _ButtonColor(color: Color(0xff364D56)),
              ],
            ),
          ),
          OrangeButton(
            text: 'More related products',
            color: Color(0xffFFC675),
            height: 30,
            width: 170,
          ),
        ],
      ),
    );
  }
}

class _ButtonColor extends StatelessWidget {
  const _ButtonColor({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class _LikeCartSettingsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const _ShadowedButton(
            icon: Icon(Icons.star, color: Colors.red, size: 25),
          ),
          _ShadowedButton(
            icon: Icon(Icons.add_shopping_cart,
                color: Colors.grey.withOpacity(0.4), size: 25),
          ),
          _ShadowedButton(
            icon: Icon(Icons.settings,
                color: Colors.grey.withOpacity(0.4), size: 25),
          ),
        ],
      ),
    );
  }
}

class _ShadowedButton extends StatelessWidget {
  const _ShadowedButton({required this.icon});

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: -5,
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: icon,
    );
  }
}
