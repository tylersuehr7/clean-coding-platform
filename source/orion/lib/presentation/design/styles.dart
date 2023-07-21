import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';
import 'layout.dart';
import 'themes.dart';

const SystemUiOverlayStyle orionSystemUiOverlayStyle = SystemUiOverlayStyle(
  // For iOS only
  statusBarBrightness: Brightness.light,
  // For Android only
  statusBarColor: Colors.white,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: Colors.transparent,
  systemNavigationBarDividerColor: Colors.transparent,
  systemNavigationBarIconBrightness: Brightness.dark,
);

class OrionInputDecorationTheme extends InputDecorationTheme {
  OrionInputDecorationTheme(final ColorScheme colorScheme): super(
    labelStyle: orionTextTheme.bodyLarge,
    hintStyle: orionTextTheme.bodyLarge,
    errorStyle: orionTextTheme.bodySmall,
    filled: true,
    fillColor: neutralColor[100],
    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: grid2),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(grid1),
      borderSide: BorderSide(color: colorScheme.primary, width: 1, style: BorderStyle.solid),
    ),
  );
}

final ButtonStyle orionButtonStyle = ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    )
));
