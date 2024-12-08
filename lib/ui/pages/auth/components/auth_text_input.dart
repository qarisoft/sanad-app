import 'package:flutter/material.dart';

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
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        // 5.verticalSpace,
        const SizedBox(
          height: 5,
        ),
        Container(
          // padding: const EdgeInsets.symmetric(horizontal: 14),
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1, color: AppColor.secondaryExtraSoft),
          ),
          child: Localizations.override(
            // locale: ENGLISH_LOCAL,
            context: context,
            child: TextFormField(
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
              // style: const TextStyle(fontSize: 14, fontFamily: fontFamily),
              // maxLines: 1,
              controller: controller,
              // textAlign: TextAlign.end,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
                hintText: hintLabel ?? label,
                hintStyle: TextStyle(
                  // fontSize: 14,
                  // fontFamily: fontFamily,
                  fontWeight: FontWeight.w500,
                  // color: AppColor.secondarySoft,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
