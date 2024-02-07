import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:getwidget/getwidget.dart';
import 'package:my_resume/app/data/models/cv_model.dart';
import 'package:my_resume/app/presentation/provider/provider.dart';
import 'package:my_resume/app/presentation/widget/app_tile.dart';
import 'package:my_resume/app/presentation/widget/default_text.dart';
import 'package:my_resume/core/theme/colors.dart';
import 'package:my_resume/core/theme/fontsize.dart';
import 'package:my_resume/gen/assets.gen.dart';
import 'package:provider/provider.dart';

class ResumeScreen extends HookWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<ResumeProvider>(
      builder: (context, provider, child) {
        if (provider.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ResumeBody(
            cv: provider.cv!,
          );
        }
      },
    ));
  }
}

class ResumeBody extends StatelessWidget {
  final CVModel cv;
  const ResumeBody({
    super.key,
    required this.cv,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GFListTile(
            avatar: Assets.image.avatar.image(
              width: 150,
              height: 150,
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) =>
                  Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: child,
              ),
            ),
            title: CupertinoListTile(
              title: DefaultText(
                text: cv.name,
                style: AppTextStyles.title22(context),
              ),
            ),
          ),

          //! Contact

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: DefaultText(
              text: 'Contact',
              style: AppTextStyles.headlineBold14(
                context,
                color: AppColors.accentBlue,
              ),
            ),
          ),

          for (var item in cv.contact)
            AppTile(
              subitem: item,
            ),

          //! Education

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: DefaultText(
              text: 'Education',
              style: AppTextStyles.headlineBold14(
                context,
                color: AppColors.accentBlue,
              ),
            ),
          ),

          for (var item in cv.education)
            AppTile(
              subitem: item,
            ),

          //! Certifications

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: DefaultText(
              text: 'Certifications',
              style: AppTextStyles.headlineBold14(
                context,
                color: AppColors.accentBlue,
              ),
            ),
          ),

          for (var item in cv.certificates)
            AppTile(
              subitem: item,
            ),

          //! Certifications

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: DefaultText(
              text: 'Skills',
              style: AppTextStyles.headlineBold14(
                context,
                color: AppColors.accentBlue,
              ),
            ),
          ),

          for (var item in cv.skills)
            AppTile(
              subitem: item,
            ),

          //! Professional Summary

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: DefaultText(
              text: 'Professional Summary',
              style: AppTextStyles.headlineBold14(
                context,
                color: AppColors.accentBlue,
              ),
            ),
          ),

          for (var item in cv.professionalSummary)
            AppTile(
              subitem: item,
            ),
          //! Working History

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: DefaultText(
              text: 'Working History',
              style: AppTextStyles.headlineBold14(
                context,
                color: AppColors.accentBlue,
              ),
            ),
          ),

          for (var item in cv.workingExperience)
            AppTile(
              subitem: item,
            ),
          const SizedBox.square(
            dimension: 100,
          ),
        ],
      ),
    );
  }
}
