import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF566CA2),
            fontSize: 30,
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xFF566CA2),
                blurRadius: 30,
                offset: Offset(0, 10.88),
              ),
            ],
          ),
          child: CircleAvatar(
            backgroundColor: const Color(0xFF566CA2),
            radius: 30,
            child: IconButton(
              color: Colors.white,
              iconSize: 30,
              onPressed: onPressed,
              icon: const Icon(Icons.arrow_forward),
            ),
          ),
        ),
      ],
    );
  }
}
