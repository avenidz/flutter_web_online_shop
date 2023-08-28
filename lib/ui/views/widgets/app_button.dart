import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/common/app_colors.dart';
import 'package:flutter_web_online_shop/ui/widgets/app_text.dart';

Widget buttonShop(String label) {
  return Container(
      width: 218.0,
      height: 57.0,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50.0), boxShadow: const [
        BoxShadow(
          color: ColorRes.darkGrey,
          offset: Offset(0, 5),
          blurRadius: 5.0,
          spreadRadius: 0.10,
        )
      ]),
      child: Center(
          child: AppText(
        label: label,
        fontSize: 24.0,
        fontWeight: FontWeight.w500,
      )));
}
