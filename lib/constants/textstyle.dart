// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'sizes.dart';

// ignore: camel_case_types
class textstyle {
  static TextStyle heading1 = TextStyle(
    fontSize: fontSizes.small,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle heading2 = TextStyle(
    fontSize: fontSizes.xsmall,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle heading3 = TextStyle(
    fontSize: fontSizes.xxsmall,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle text_Button = TextStyle(
    fontSize: fontSizes.xxsmall,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static TextStyle text_Button_BL = TextStyle(
    fontSize: fontSizes.xxsmall,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  // static TextStyle text_Body = TextStyle(
  //   fontSize: fontSizes.xxxsmall,
  //   color: Colors.black,
  // );

  // static TextStyle text_link = TextStyle(
  //   fontSize: fontSizes.xxxsmall,
  //   color: colors.button,
  //   fontWeight: FontWeight.bold,
  // );

  static TextStyle text_caption = TextStyle(
    fontSize: fontSizes.xxsmall,
    color: Colors.grey,
  );
}
