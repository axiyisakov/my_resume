import 'package:flutter/material.dart';
import 'package:my_resume/app/presentation/provider/cv_provider.dart';
import 'package:my_resume/app/presentation/view/cv_screen.dart';
import 'package:my_resume/core/di/locator.dart';
import 'package:provider/provider.dart';

class CVView extends StatelessWidget {
  const CVView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => sl<CVProvider>(),
      child: const CVScreen(),
    );
  }
}
