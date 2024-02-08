import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:my_resume/app/data/models/cv_model.dart';
import 'package:my_resume/app/domain/usecases/cv/resume/get_resume.dart';
import 'package:my_resume/core/di/locator.dart';

@injectable
class ResumeProvider with ChangeNotifier {
  final GetResume getResume = sl<GetResume>();
  var _isLoading = true;
  CVModel? _cv;

  ResumeProvider() {
    _fetchResume();
  }

  void _fetchResume() async {
    setLoading(true);
    final result = await getResume(const GetCVParams());
    result.fold(
      (error) {
        setLoading(false);
      },
      (data) {
        _cv = data;
        setLoading(false);
      },
    );
    notifyListeners();
  }

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  bool get isLoading => _isLoading;
  CVModel? get cv => _cv;
}
