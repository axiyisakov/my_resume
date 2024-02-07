import 'package:my_resume/app/presentation/view/cv/resume_view.dart';
import 'package:my_resume/app/presentation/view/portfolio/portfolio_view.dart';

abstract final class CVPages {
  static final pages = [const ResumeView(), const PortfolioView()];
}
