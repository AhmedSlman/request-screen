import 'package:flutter/material.dart';
import 'package:my_task/widgets/custom_button.dart';
import 'package:my_task/widgets/custom_text_form_field.dart';
import 'package:my_task/widgets/large_content_text_form_field.dart';
import 'package:my_task/widgets/options_widget.dart';
import 'package:my_task/widgets/print_copy_drop_menue.dart';

class PrintCopyRequest extends StatelessWidget {
  const PrintCopyRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios_new),
          title: Text(
            'Print/Copy Request',
            style: TextStyle(
                color: Colors.blue[700],
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 20),
                PrintDropMenueWidget(
                  selectedType: '',
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  hintText: "  Soures",
                  contentPadding: 20,
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  hintText: '  Number od copies',
                  contentPadding: 20,
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  hintText: '  Toatal Pages',
                  contentPadding: 20,
                ),
                const SizedBox(height: 20),
                const OptionsWidget(),
                const SizedBox(height: 20),
                CustomTextFormField(
                  prefixIcon: const Icon(Icons.date_range),
                  hintText: 'Date Required',
                  contentPadding: 20,
                ),
                const SizedBox(height: 20),
                const LargeContentTextFormFild(
                    hintText: "Note",
                    prefixIcon: Icon(Icons.short_text_sharp),
                    contentPadding: 40,
                    characterCount: 400),
                CustomButton(
                  title: "Attach File",
                  icon: Icons.file_open_sharp,
                  hight: 50,
                  width: 180,
                ),
                const SizedBox(height: 20),
                CustomButton(
                  title: "Submit",
                  hight: 50,
                  width: 100,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
