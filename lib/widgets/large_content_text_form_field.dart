import 'package:flutter/material.dart';

class LargeContentTextFormFild extends StatefulWidget {
  const LargeContentTextFormFild({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.contentPadding,
    required this.characterCount,
  });

  final String hintText;
  final int characterCount;
  final Widget prefixIcon;
  final double contentPadding;

  @override
  State<LargeContentTextFormFild> createState() =>
      _LargeContentTextFormFildState();
}

class _LargeContentTextFormFildState extends State<LargeContentTextFormFild> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  late String _characterCount;

  @override
  void initState() {
    super.initState();
    _characterCount = '0/${widget.characterCount}';
    _controller.addListener(_updateCharacterCount);
  }

  void _updateCharacterCount() {
    setState(() {
      _characterCount = '${_controller.text.length}/${widget.characterCount}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextFormField(
            controller: _controller,
            validator: (value) {
              if (value == null || value.length > widget.characterCount) {
                return 'Text must be less than 50 characters';
              }
              return null;
            },
            onChanged: (value) {
              _updateCharacterCount();
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey)),
              prefixIcon: widget.prefixIcon,
              hintText: widget.hintText,
              contentPadding: EdgeInsets.all(widget.contentPadding),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(_characterCount),
          ),
        ],
      ),
    );
  }
}
