import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({
    this.category_text,
    this.category_bg_color,
    this.category_color,
    this.category_font_size,
    this.onTap,
  });

  Function()? onTap;
  String? category_text;
  Color? category_bg_color;
  Color? category_color;
  double? category_font_size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        alignment: Alignment.center,
        color: category_bg_color,
        child: Text(
          category_text!,
          style: TextStyle(
            color: category_color,
            fontSize: category_font_size,
            fontFamily: 'DynaPuff',
          ),
        ),
      ),
    );
  }
}
