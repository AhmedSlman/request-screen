import 'package:flutter/material.dart';

class LeveTypeWidget extends StatefulWidget {
  LeveTypeWidget({
    super.key,
    required this.selectedType,
  });

  final String selectedType;

  @override
  State<LeveTypeWidget> createState() => _LeveTypeWidgetState();
}

class _LeveTypeWidgetState extends State<LeveTypeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: DropdownButtonFormField(
        alignment: AlignmentDirectional.centerEnd,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          hintText: 'Leave Type*',
        ),
        items: ['1', '2'].map((period) {
          return DropdownMenuItem(
            value: period,
            child: Text(period),
          );
        }).toList(),
        onChanged: (value) {
          value == widget.selectedType;
        },
      ),
    );
  }
}
