import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:getwidget/getwidget.dart';
import 'package:my_resume/app/data/models/cv_model.dart';
import 'package:my_resume/app/presentation/animation/animation.dart';
import 'package:my_resume/app/presentation/provider/provider.dart';
import 'package:my_resume/app/presentation/widget/app_tile.dart';
import 'package:my_resume/app/presentation/widget/default_text.dart';
import 'package:my_resume/app/presentation/widget/subitem_wrap_widget.dart';
import 'package:my_resume/app/presentation/widget/subitems_widget.dart';
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: GFListTile(
                avatar: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Assets.image.avatar.image(
                      width: 150,
                      height: 150,
                      frameBuilder:
                          (context, child, frame, wasSynchronouslyLoaded) =>
                              child,
                    ),
                  ),
                ).flipCard(),
                title: CupertinoListTile(
                  title: DefaultText(
                    text: cv.name,
                    style: AppTextStyles.title22(context),
                  ),
                ),
              ),
            ),
          ),

          //! Contact

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Gap(15),
                  DefaultText(
                    text: 'Contact',
                    style: AppTextStyles.headlineBold14(
                      context,
                      color: AppColors.accentBlue,
                    ),
                  ).headerTitleAnimation(),
                  for (var item in cv.contact)
                    AppTile(
                      subitem: item,
                      subTitle: SubItemsWidget(
                        values: item.values,
                        year: item.year,
                      ),
                    ),
                  const Gap(15),
                ],
              ),
            ).textAnimation(),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //! Education
                  const Gap(15),
                  DefaultText(
                    text: 'Education',
                    style: AppTextStyles.headlineBold14(
                      context,
                      color: AppColors.accentBlue,
                    ),
                  ).headerTitleAnimation(),

                  for (var item in cv.education)
                    AppTile(
                      subitem: item,
                      subTitle: SubItemsWidget(
                        values: item.values,
                        year: item.year,
                      ),
                    ),
                  const Gap(15),
                ],
              ),
            ).textAnimation(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //! Certifications
                  const Gap(15),
                  DefaultText(
                    text: 'Certifications',
                    style: AppTextStyles.headlineBold14(
                      context,
                      color: AppColors.accentBlue,
                    ),
                  ).headerTitleAnimation(),

                  for (var item in cv.certificates)
                    AppTile(
                      subitem: item,
                      subTitle: SubItemsWidget(
                        values: item.values,
                        year: item.year,
                      ),
                    ),
                  const Gap(15),
                ],
              ),
            ).textAnimation(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //! Certifications
                  const Gap(15),
                  DefaultText(
                    text: 'Skills',
                    style: AppTextStyles.headlineBold14(
                      context,
                      color: AppColors.accentBlue,
                    ),
                  ).headerTitleAnimation(),

                  for (var item in cv.skills)
                    AppTile(
                      subitem: item,
                      subTitle: SubItemsWrapWidget(
                        values: item.values,
                      ),
                    ),
                  const Gap(15),
                ],
              ),
            ).textAnimation(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //! Professional Summary
                  const Gap(15),
                  DefaultText(
                    text: 'Professional Summary',
                    style: AppTextStyles.headlineBold14(
                      context,
                      color: AppColors.accentBlue,
                    ),
                  ).headerTitleAnimation(),

                  for (var item in cv.professionalSummary)
                    AppTile(
                      subitem: item,
                      subTitle: SubItemsWidget(
                        values: item.values,
                        year: item.year,
                      ),
                    ),
                  const Gap(15),
                ],
              ),
            ).textAnimation(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //! Working History
                  const Gap(15),
                  DefaultText(
                    text: 'Working History',
                    style: AppTextStyles.headlineBold14(
                      context,
                      color: AppColors.accentBlue,
                    ),
                  ).headerTitleAnimation(),

                  for (var item in cv.workingExperience)
                    AppTile(
                      subitem: item,
                      subTitle: SubItemsWidget(
                        values: item.values,
                        year: item.year,
                      ),
                    ),
                  const Gap(15),
                ],
              ),
            ).textAnimation(),
          ),
          const SizedBox.square(
            dimension: 100,
          ),
        ],
      ),
    );
  }
}
