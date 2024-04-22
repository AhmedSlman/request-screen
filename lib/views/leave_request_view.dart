// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:my_task/widgets/custom_button.dart';
import 'package:my_task/widgets/custom_text_form_field.dart';
import 'package:my_task/widgets/large_content_text_form_field.dart';
import 'package:my_task/widgets/leave_type_drop_down_button.dart';
import 'package:my_task/widgets/request_cover_widget.dart';

class LeaveRequest extends StatelessWidget {
  const LeaveRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Text(
          'Leave Request',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            LeveTypeWidget(
              selectedType: '',
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              prefixIcon: const Icon(Icons.calendar_month),
              hintText: 'Date from*',
              contentPadding: 20,
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              prefixIcon: const Icon(Icons.calendar_month),
              hintText: 'Date to*',
              contentPadding: 20,
            ),
            const SizedBox(height: 20),
            const LargeContentTextFormFild(
              hintText: 'Reson*',
              prefixIcon: Icon(Icons.short_text_sharp),
              contentPadding: 40,
              characterCount: 50,
            ),
            const SizedBox(height: 20),
            CustomButton(
              title: 'Attachnent',
            ),
            const SizedBox(height: 20),
            const RequestCoverWidget(),
            const SizedBox(height: 20),
            CustomButton(
              width: 100,
              title: 'Submete',
            ),
          ],
        ),
      ),
    );
  }
}
