import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton(
      {super.key,
      required this.title,
      required this.action,
      this.isLoading = false});
  final String title;
  final Function() action;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: isLoading ? null : action,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          backgroundColor: isLoading
              ? const Color.fromARGB(255, 76, 134, 241)
              : Color.fromARGB(255, 76, 134, 241),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          // !loading ?
          title,
          style: const TextStyle(
            fontSize: 16,
            // fontFamily: fontFamily,
            fontWeight: FontWeight.w600,
            // color: AppColor.primaryExtraSoft,
          ),
        ),
      ),
    );
  }
}
