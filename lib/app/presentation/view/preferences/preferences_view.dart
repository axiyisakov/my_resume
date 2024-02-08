import 'package:flutter/material.dart';
import 'package:my_resume/app/presentation/provider/preferences/preferences_provider.dart';
import 'package:my_resume/app/presentation/view/preferences/preferences_screen.dart';
import 'package:provider/provider.dart';

class PreferencesView extends StatelessWidget {
  const PreferencesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PreferencesProvider(),
      child: const PreferncesScreen(),
    );
  }
}
