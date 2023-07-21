library boot;

import 'package:flutter/material.dart';

class BootScreen extends StatelessWidget {
  const BootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        color: theme.colorScheme.background,
        width: double.infinity,
        child: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
