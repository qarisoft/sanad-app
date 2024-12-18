import 'package:flutter/material.dart';
import 'package:sanad/common.dart';

const ENGLISH_LOCAL = Locale('en');

class InputContainer extends StatelessWidget {
  const InputContainer(
      {super.key,
      required this.controller,
      required this.label,
      this.hintLabel,
      this.isObscure = false});

  final String label;
  final String? hintLabel;
  final TextEditingController controller;
  final bool? isObscure;

  // Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1, color: AppColor.secondaryExtraSoft),
          ),
          child: Localizations.override(
            context: context,
            child: TextFormField(
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
              controller: controller,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
