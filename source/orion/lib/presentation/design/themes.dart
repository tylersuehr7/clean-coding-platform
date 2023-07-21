import 'package:flutter/material.dart';

/// Application color scheme for Light Mode
const ColorScheme orionLightColorScheme = ColorScheme(
  brightness: Brightness.light,

  primary: Color(0xFF285F9F),
  primaryContainer: Color(0xFFD5E3FD),
  onPrimary: Color(0xFFFFFFFF),
  onPrimaryContainer: Color(0xFF071C34),

  secondary: Color(0xFF555F6E),
  secondaryContainer: Color(0xFFD9E3F6),
  onSecondary: Color(0xFFFFFFFF),
  onSecondaryContainer: Color(0xFF131C2A),

  tertiary: Color(0xFF685876),
  tertiaryContainer: Color(0xFFEFDBFC),
  onTertiary: Color(0xFFFFFFFF),
  onTertiaryContainer: Color(0xFF23152F),

  error: Color(0xFFAB2D25),
  errorContainer: Color(0xFFF9DBD7),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF3B0605),

  background: Color(0xFFFDFCFF),
  onBackground: Color(0xFF1A1C1E),

  surface: Color(0xFFFDFCFF),
  onSurface: Color(0xFF1A1C1E),

  surfaceVariant: Color(0xFFDFE2EA),
  onSurfaceVariant: Color(0xFF44474D),

  outline: Color(0xFF74777E),
  shadow: Color(0xFF000000),
  inverseSurface: Color(0xFF2F3033),
  onInverseSurface: Color(0xFFF1F0F4),
  inversePrimary: Color(0xFFA8C9FA),
);

/// Application color scheme for Dark Mode
const ColorScheme orionDarkColorScheme = ColorScheme(
  brightness: Brightness.dark,

  primary: Color(0xFFA8C9FA),
  primaryContainer: Color(0xFF1C4879),
  onPrimary: Color(0xFF113155),
  onPrimaryContainer: Color(0xFFD5E3FD),

  secondary: Color(0xFFBDC7D9),
  secondaryContainer: Color(0xFF3E4857),
  onSecondary: Color(0xFF27313F),
  onSecondaryContainer: Color(0xFFD9E3F6),

  tertiary: Color(0xFFD3BFE1),
  tertiaryContainer: Color(0xFF4F405D),
  onTertiary: Color(0xFF382A46),
  onTertiaryContainer: Color(0xFFEFDBFC),

  error: Color(0xFFF4B7AE),
  errorContainer: Color(0xFF861915),
  onError: Color(0xFF600F0C),
  onErrorContainer: Color(0xFFF4B7AE),

  background: Color(0xFF1A1C1E),
  onBackground: Color(0xFFE2E2E6),

  surface: Color(0xFF1A1C1E),
  onSurface: Color(0xFFE2E2E6),

  surfaceVariant: Color(0xFF44474D),
  onSurfaceVariant: Color(0xFFC3C6CE),

  outline: Color(0xFF8E9198),
  shadow: Color(0xFF000000),
  inverseSurface: Color(0xFFE2E2E6),
  onInverseSurface: Color(0xFF2F3033),
  inversePrimary: Color(0xFF285F9F),
);

/// Application text theme
const TextTheme orionTextTheme = TextTheme(
  displayLarge: TextStyle(fontFamily: "Poppins", fontSize: 57, fontWeight: FontWeight.w700, letterSpacing: -0.5),
  displayMedium: TextStyle(fontFamily: "Poppins", fontSize: 45, fontWeight: FontWeight.w700),
  displaySmall: TextStyle(fontFamily: "Poppins", fontSize: 36, fontWeight: FontWeight.w700),
  headlineLarge: TextStyle(fontFamily: "Poppins", fontSize: 32, fontWeight: FontWeight.w600),
  headlineMedium: TextStyle(fontFamily: "Poppins", fontSize: 28, fontWeight: FontWeight.w600),
  headlineSmall: TextStyle(fontFamily: "Poppins", fontSize: 24, fontWeight: FontWeight.w600),
  titleLarge: TextStyle(fontFamily: "Poppins", fontSize: 22, fontWeight: FontWeight.w700),
  titleMedium: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w700),
  titleSmall: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w700),
  bodyLarge: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w400),
  bodyMedium: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400),
  bodySmall: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w400),
  labelLarge: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w600),
  labelMedium: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w600),
  labelSmall: TextStyle(fontFamily: "Poppins", fontSize: 11, fontWeight: FontWeight.w600),
);
