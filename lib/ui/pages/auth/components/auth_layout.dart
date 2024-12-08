import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout(
      {super.key,
      required this.title,
      required this.children,
      required this.hero});
  final String title;
  final List<Widget> children;
  final Widget hero;
  // final iitem
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          hero,
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(10),
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
