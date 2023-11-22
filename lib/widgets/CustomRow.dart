import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.text});

  final String text;

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
                blurRadius: 50,
                offset: Offset(0, 10.88),
                spreadRadius: 0,
              ),
            ],
          ),
          child: CircleAvatar(
            backgroundColor: const Color(0xFF566CA2),
            radius: 30,
            child: IconButton(
              color: Colors.white,
              iconSize: 30,
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward),
            ),
          ),
        ),
      ],
    );
  }
}
