import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sanad/common.dart';
import 'package:sanad/ui/providers/index.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({
    super.key,
    required this.title,
    required this.child,
    // required this.hero,
  });

  final String title;
  final List<Widget> child;

  // final Widget hero;
  // final iitem
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ExpandedScrollingColumn(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              gradient: AppColor.primaryGradient,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/logo2.png')
                    // image: AssetImage('assets/images/logo.png'),
                    ),
                const SizedBox(height: 10),
                Text(
                  title,
                  // AppStrings.loginPhrase.tr()
                  style: const TextStyle(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Consumer(
                      builder: (context, ref, child) {
                        final local = ref.watch(localProvider);

                        return GestureDetector(
                          onTap: () {
                            ref.read(localProvider.notifier).toggole();
                          },
                          child: Text(local == 'ar' ? 'english' : 'عربي'),
                        );
                      },
                    )
                  ],
                ),
                // 10.vSpace,
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [...child],
              ),
            ),
          ),

          // Authhero(
          //   text: title,
          //   image: AssetImage('assets/images/logo2.png'),
          // ),

          // Expanded(
          //   child: child,
          // )
        ],
      ),
    );
  }
}
