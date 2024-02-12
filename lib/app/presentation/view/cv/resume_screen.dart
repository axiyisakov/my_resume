import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:getwidget/getwidget.dart';
import 'package:my_resume/app/data/models/cv_model.dart';
import 'package:my_resume/app/presentation/animation/animation.dart';
import 'package:my_resume/app/presentation/provider/provider.dart';
import 'package:my_resume/app/presentation/widget/app_sliver_persistance_header.dart';
import 'package:my_resume/app/presentation/widget/app_tile.dart';
import 'package:my_resume/app/presentation/widget/default_text.dart';
import 'package:my_resume/app/presentation/widget/subitem_wrap_widget.dart';
import 'package:my_resume/app/presentation/widget/subitems_widget.dart';
import 'package:my_resume/core/extension/extension.dart';
import 'package:my_resume/core/theme/colors.dart';
import 'package:my_resume/core/theme/spacing.dart';
import 'package:my_resume/core/theme/text_styles.dart';
import 'package:my_resume/gen/assets.gen.dart';
import 'package:provider/provider.dart';

class ResumeScreen extends HookWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.configureDisignSize();
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
    context.configureDisignSize();
    return CustomScrollView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      slivers: [
        Padding(
          padding: const EdgeInsets.all(Spacing.ten),
          child: Card(
            child: GFListTile(
              avatar: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Spacing.ten.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Spacing.ten.r),
                  child: Assets.image.avatar.image(
                    width: Spacing.ten.w * Spacing.ten.w,
                    height: Spacing.ten.w * Spacing.ten.w,
                    frameBuilder:
                        (context, child, frame, wasSynchronouslyLoaded) =>
                            child,
                  ),
                ),
              ).flipCard(),
              title: DefaultText(
                text: cv.name,
                style: AppTextStyles.title22(context),
              ),
              subTitle: DefaultText(
                text: cv.position,
                style: AppTextStyles.body14(context),
              ),
            ),
          ),
        ).toSliver(),
        SliverPersistentHeader(
          pinned: true,
          delegate: AppSPH(
            child: DefaultText(
              text: 'Contact',
              style: AppTextStyles.headlineBold14(
                context,
                color: AppColors.accentBlue,
              ),
            ).headerTitleAnimation(),
          ),
        ),
        //! Contact

        Padding(
          padding: const EdgeInsets.all(Spacing.ten).r,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(Spacing.medium15.h),
                for (var item in cv.contact)
                  AppTile(
                    subitem: item,
                    subTitle: SubItemsWidget(
                      values: item.values,
                      year: item.year,
                    ),
                  ),
                Gap(Spacing.medium15.h),
              ],
            ),
          ).textAnimation(),
        ).toSliver(),

        SliverPersistentHeader(
          pinned: true,
          delegate: AppSPH(
            child: DefaultText(
              text: 'Education',
              style: AppTextStyles.headlineBold14(
                context,
                color: AppColors.accentBlue,
              ),
            ).headerTitleAnimation(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(Spacing.ten).r,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //! Education
                const Gap(Spacing.medium15),

                for (var item in cv.education)
                  AppTile(
                    subitem: item,
                    subTitle: SubItemsWidget(
                      values: item.values,
                      year: item.year,
                    ),
                  ),
                const Gap(Spacing.medium15),
              ],
            ),
          ).textAnimation(),
        ).toSliver(),
        //! Certifications
        SliverPersistentHeader(
          pinned: true,
          delegate: AppSPH(
            child: DefaultText(
              text: 'Certifications',
              style: AppTextStyles.headlineBold14(
                context,
                color: AppColors.accentBlue,
              ),
            ).headerTitleAnimation(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(Spacing.ten).r,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(Spacing.medium15.h),
                for (var item in cv.certificates)
                  AppTile(
                    subitem: item,
                    subTitle: SubItemsWidget(
                      values: item.values,
                      year: item.year,
                    ),
                  ),
                Gap(Spacing.medium15.h),
              ],
            ),
          ).textAnimation(),
        ).toSliver(),

        SliverPersistentHeader(
          pinned: true,
          delegate: AppSPH(
            child: DefaultText(
              text: 'Skills',
              style: AppTextStyles.headlineBold14(
                context,
                color: AppColors.accentBlue,
              ),
            ).headerTitleAnimation(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(Spacing.ten).r,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //! Certifications
                Gap(Spacing.medium15.h),

                for (var item in cv.skills)
                  AppTile(
                    subitem: item,
                    subTitle: SubItemsWrapWidget(
                      values: item.values,
                    ),
                  ),
                Gap(Spacing.medium15.h),
              ],
            ),
          ).textAnimation(),
        ).toSliver(),

        SliverPersistentHeader(
          pinned: true,
          delegate: AppSPH(
            child: DefaultText(
              text: 'Professional Summary',
              style: AppTextStyles.headlineBold14(
                context,
                color: AppColors.accentBlue,
              ),
            ).headerTitleAnimation(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(Spacing.ten).r,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //! Professional Summary
                Gap(Spacing.medium15.h),

                for (var item in cv.professionalSummary)
                  AppTile(
                    subitem: item,
                    subTitle: SubItemsWidget(
                      values: item.values,
                      year: item.year,
                    ),
                  ),
                Gap(Spacing.medium15.h),
              ],
            ),
          ).textAnimation(),
        ).toSliver(),

        SliverPersistentHeader(
          pinned: true,
          delegate: AppSPH(
            child: DefaultText(
              text: 'Working History',
              style: AppTextStyles.headlineBold14(
                context,
                color: AppColors.accentBlue,
              ),
            ).headerTitleAnimation(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(Spacing.ten).r,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //! Working History
                Gap(Spacing.medium15.h),

                for (var item in cv.workingExperience)
                  AppTile(
                    subitem: item,
                    subTitle: SubItemsWidget(
                      values: item.values,
                      year: item.year,
                    ),
                  ),
                Gap(Spacing.medium15.h),
              ],
            ),
          ).textAnimation(),
        ).toSliver(),
        const Gap(
          kToolbarHeight,
        ).toSliver(),
      ],
    );
  }
}
