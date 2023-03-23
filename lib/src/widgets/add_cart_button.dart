import 'package:flutter/material.dart';

import 'package:shoesapp/src/widgets/widgets.dart';

class AddCartButton extends StatelessWidget {
  const AddCartButton({super.key, required this.price});

  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Text(
              '\$$price',
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const OrangeButton(text: 'Add to cart'),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
