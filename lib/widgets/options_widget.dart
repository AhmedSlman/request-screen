// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_task/widgets/check_box_widget.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "  Options",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CheckBoxItem(
                    item: 'Lamitation',
                  ),
                  CheckBoxItem(
                    item: 'Singel',
                  ),
                  CheckBoxItem(
                    item: 'Staple',
                  ),
                  CheckBoxItem(
                    item: 'Enlarge',
                  ),
                  CheckBoxItem(
                    item: 'A3',
                  ),
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CheckBoxItem(
                    item: 'Bind',
                  ),
                  CheckBoxItem(
                    item: 'Back to Back',
                  ),
                  CheckBoxItem(
                    item: 'Reduce',
                  ),
                  CheckBoxItem(
                    item: 'A4',
                  ),
                  SizedBox(
                    height: 35,
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class CheckBoxItem extends StatelessWidget {
  const CheckBoxItem({
    super.key,
    required this.item,
  });
  final String item;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CheckBoxWidget(),
        Text(item, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
