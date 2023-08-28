import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/common/app_colors.dart';

class AppText extends StatelessWidget {
  final String label;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  const AppText({Key? key, required this.label, this.color, this.fontWeight, this.fontSize, this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize:  fontSize ?? 12.0,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? ColorRes.black,

      ),
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}
