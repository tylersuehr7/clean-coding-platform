library welcome;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orion/app_router.dart';
import 'package:orion/presentation/design/layout.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: grid4),
          color: theme.colorScheme.background,
          child: Column(
            children: [
              Text("Orion", style: theme.textTheme.displaySmall!.copyWith(color: theme.colorScheme.primary)),
              Text("Clean Coding Platform", style: theme.textTheme.bodyMedium),
              const Spacer(),
              SizedBox(height: 256, width: 256, child: SvgPicture.asset("assets/illustrations/undraw_launching.svg")),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: FilledButton(onPressed: () {
                  appRouter.navigateTo(context, "login");
                }, child: const Text("Get Started")),
              ),
            ],
          ),
        )
      )
    );
  }
}
