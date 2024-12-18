import 'package:flutter/cupertino.dart';

extension SpacerEx on num{
  Widget get vSpace=>  SizedBox(height: toDouble());
  Widget get hSpace=>  SizedBox(width: toDouble());
}

extension StringToDouble on String {
  double toDouble() {
    try {
      return double.parse(toString());
    } catch (e) {
      return 0.0;
    }
  }
}



extension WidgetStatePropertyAllMaper on Color{
  wstate()=>WidgetStatePropertyAll(this);
}