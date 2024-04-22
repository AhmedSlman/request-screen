import 'package:flutter/material.dart';

class PrintDropMenueWidget extends StatefulWidget {
  PrintDropMenueWidget({
    super.key,
    required this.selectedType,
  });

  final String selectedType;

  @override
  State<PrintDropMenueWidget> createState() => _PrintDropMenueWidgetState();
}

class _PrintDropMenueWidgetState extends State<PrintDropMenueWidget> {
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
          hintText: 'Print*',
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
