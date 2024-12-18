import 'package:flutter/material.dart';
import 'package:sanad/common.dart';

class Authhero extends StatelessWidget {
  const Authhero({super.key, required this.text, required this.image});
  final String text;
  final ImageProvider<Object> image;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // backgroundColor: AppColor.primary,
      pinned: true,
      floating: true,
      centerTitle: true,
      expandedHeight: MediaQuery.of(context).size.height*0.3,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
              gradient: AppColor.primaryGradient,
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: image
                  // image: AssetImage('assets/images/logo.png'),
                  ),
              const SizedBox(height: 10),
              Text(
                text,
                // AppStrings.loginPhrase.tr()
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
