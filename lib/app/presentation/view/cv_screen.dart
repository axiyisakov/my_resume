import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_resume/app/presentation/provider/cv_provider.dart';
import 'package:my_resume/core/pages.dart';
import 'package:provider/provider.dart';

class CVScreen extends HookWidget {
  const CVScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Resume'),
      ),
      body: Consumer<CVProvider>(
        builder: (context, value, child) => PageView(
          controller: value.pageController,
          children: CVPages.pages,
        ),
      ),
    );
  }
}
