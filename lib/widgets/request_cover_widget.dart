import 'package:flutter/material.dart';

class RequestCoverWidget extends StatefulWidget {
  const RequestCoverWidget({Key key = const Key('request_cover_widget')})
      : super(key: key);

  @override
  _RequestCoverWidgetState createState() => _RequestCoverWidgetState();
}

class _RequestCoverWidgetState extends State<RequestCoverWidget> {
  String _selectedValue = 'Yes'; // تعيين القيمة الافتراضية

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Request Cover : "),
        Radio(
          focusColor: Colors.blue[700],
          activeColor: Colors.blue[700],
          value: 'Yes',
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value.toString();
            });
          },
        ),
        const Text('Yes'),
        Radio(
          focusColor: Colors.blue[700],
          activeColor: Colors.blue[700],
          value: 'No',
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value.toString();
            });
          },
        ),
        const Text('No'),
      ],
    );
  }
}
