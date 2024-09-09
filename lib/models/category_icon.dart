// category_icon.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildCategoryIcon(String iconPath) {
  // Check the file extension to determine which widget to use
  if (iconPath.endsWith('.svg')) {
    return SvgPicture.asset(
      iconPath,
      fit: BoxFit.cover,
    );
  } else if (iconPath.endsWith('.jpg') || iconPath.endsWith('.jpeg') || iconPath.endsWith('.png')) {
    return Image.asset(
      iconPath,
      fit: BoxFit.cover,
    );
  } else {
    return const Icon(Icons.error);  // Return an error icon if the format is not supported
  }
}
