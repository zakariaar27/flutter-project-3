import 'package:flutter/material.dart';

class KText extends StatelessWidget {
  const KText({
    super.key,required this.textType, this.fontWeight=FontWeight.normal,this.fontSize=16,
  });
final String textType;
final FontWeight fontWeight;
final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      textType,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
