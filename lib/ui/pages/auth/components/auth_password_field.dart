import 'package:flutter/material.dart';
import 'package:sanad/common.dart';
// import 'package:sanad/ui/common/locale/provider.dart';

class PassField extends StatefulWidget {
  const PassField({
    super.key,
    required this.controller,
    required this.label,
    required this.validator,
  });
  final TextEditingController controller;
  final String label;
  final String? Function(String?)? validator;

  @override
  State<PassField> createState() => _PassFieldState();
}

class _PassFieldState extends State<PassField> {
  bool hide = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            children: [
              Text(
                widget.label,
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
          margin: const EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            // border: Border.all(width: 1, color: AppColor.secondaryExtraSoft),
          ),
          child: Localizations.override(
            context: context,
            // locale: Local('en'),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              validator: widget.validator,
              controller: widget.controller,
              obscureText: !hide,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                border: InputBorder.none,
                // hintText: "* * * * * * * * * * * *",
                suffixIcon: IconButton(
                  icon: (hide)
                      ? Icon(Icons.remove_red_eye_sharp)
                      : Icon(Icons.remove_red_eye_outlined),
                  // ? SvgPicture.asset('assets/icons/show.svg')
                  // : SvgPicture.asset('assets/icons/hide.svg'),
                  onPressed: () => setState(() {
                    hide = !hide;
                  }),
                ),
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColor.secondarySoft,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
