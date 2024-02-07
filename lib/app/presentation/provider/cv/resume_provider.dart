import 'package:flutter/material.dart';
import 'package:my_resume/app/domain/usecases/cv/resume/get_resume.dart';
import 'package:my_resume/core/di/locator.dart';

class ResumeProvider with ChangeNotifier {
  final GetResume getResume = sl<GetResume>();
}
