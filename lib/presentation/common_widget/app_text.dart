import 'package:flutter/material.dart';
import 'package:weather_app/gen/fonts.gen.dart';

class AppText extends StatelessWidget {
  final String data;
  final double fontSize;
  final Color color;
  final String? family;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  const AppText(
      this.data, {
        super.key,
        required this.fontSize,
        required this.color,
        this.fontWeight,
        this.maxLines,
        this.overflow,
        this.textAlign,
        this.family
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: fontSize, color: color, fontWeight: fontWeight ?? FontWeight.normal, fontFamily: '$family'
      ), maxLines: maxLines, overflow: overflow, textAlign: textAlign,
      // style: GoogleFonts.manrope(fontSize: fontSize, color: color, fontWeight: fontWeight ?? FontWeight.normal),
      // maxLines: maxLines,
      // overflow: overflow,
      // textAlign: textAlign,
    );
  }
}
