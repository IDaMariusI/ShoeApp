import 'package:flutter/material.dart';

class ShoeDescription extends StatelessWidget {
  const ShoeDescription({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: const TextStyle(color: Colors.black54, height: 1.6),
          ),
        ],
      ),
    );
  }
}
