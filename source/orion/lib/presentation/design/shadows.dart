import 'package:flutter/material.dart';

import 'colors.dart';

final List<BoxShadow> shadowSmall = [
  BoxShadow(offset: const Offset(0, 3), blurRadius: 3, color: neutralColor.shade100),
  BoxShadow(offset: const Offset(0, 2), blurRadius: 2, color: neutralColor.shade100)
];

final List<BoxShadow> shadowNormal = [
  BoxShadow(offset: const Offset(0, 4), blurRadius: 8, color: neutralColor.shade100),
];

final List<BoxShadow> shadowMedium = [
  BoxShadow(offset: const Offset(0, 10), blurRadius: 10, color: neutralColor.shade100),
  BoxShadow(offset: const Offset(0, 2), blurRadius: 5, color: neutralColor.shade100)
];

final List<BoxShadow> shadowLarge = [
  BoxShadow(offset: const Offset(0, 15), blurRadius: 25, color: neutralColor.shade100),
  BoxShadow(offset: const Offset(0, 5), blurRadius: 15, color: neutralColor.shade100)
];
