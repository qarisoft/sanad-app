import 'package:flutter/material.dart';
import 'package:sanad/ui/pages/auth/components/auth_hero.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({
    super.key,
    required this.title,
    required this.children,
    // required this.hero,
  });

  final String title;
  final List<Widget> children;

  // final Widget hero;
  // final iitem
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(

        slivers: <Widget>[
          Authhero(text: title,image: AssetImage('assets/images/logo2.png'),),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: children[index],
                );
              },
              childCount: children.length,
            ),
          ),
        ],
      ),
    );
  }
}
