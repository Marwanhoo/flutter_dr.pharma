import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,
    required this.prefixIcon,
    required this.hintText,
    this.suffixIcon,
    this.onTap,
    this.enabled = true,
    this.showCursor = true,
    this.readOnly = false,
  });

  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String hintText;
  final VoidCallback? onTap;
  final bool enabled;
  final bool showCursor;
  final bool readOnly;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.grey,
          ),
          suffixIcon: suffixIcon != null
              ? Icon(
            suffixIcon,
            color: Colors.grey,
          )
              : null,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
        onTap: onTap,
        enabled: enabled,
        showCursor: showCursor,
        readOnly: readOnly,
      ),
    );
  }
}
