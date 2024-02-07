import 'package:flutter/material.dart';
import 'package:my_resume/app/presentation/provider/cv/resume_provider.dart';
import 'package:my_resume/app/presentation/view/cv/resume_screen.dart';
import 'package:provider/provider.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ResumeProvider(),
      child: const ResumeScreen(),
    );
  }
}
