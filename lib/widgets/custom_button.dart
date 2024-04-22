// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    this.onTap,
    required this.title,
    this.hight = 50,
    this.width = 150,
    this.icon,
  });
  void Function()? onTap;
  final String title;
  final double hight;
  final double width;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: hight,
        width: width,
        decoration: BoxDecoration(
          color: Colors.blue[700],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  )
                : const SizedBox(),
            Center(
                child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
