// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.controller,
    required this.hintText,
    this.prefixIcon,
    required this.contentPadding,
  });
  TextEditingController? controller = TextEditingController();
  final String hintText;
  final Widget? prefixIcon;
  final double contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: contentPadding),
        prefixIcon: prefixIcon,
        border: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey)),
        hintText: hintText,
        suffix: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
