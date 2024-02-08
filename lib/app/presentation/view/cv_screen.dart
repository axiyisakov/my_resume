import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/app/presentation/animation/animation.dart';
import 'package:my_resume/app/presentation/provider/cv_provider.dart';
import 'package:my_resume/app/presentation/widget/default_text.dart';
import 'package:my_resume/core/pages.dart';
import 'package:my_resume/core/theme/colors.dart';
import 'package:my_resume/core/theme/text_styles.dart';
import 'package:provider/provider.dart';

class CVScreen extends StatelessWidget {
  const CVScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DefaultText(
          text: 'My CV',
          style: AppTextStyles.title22(
            context,
            color: AppColors.accentBlue,
          ),
        ).headerTitleAnimation(),
        centerTitle: true,
        actions: const [
          // Consumer<CVProvider>(builder: (context, provider, _) {
          //   if (provider.isLoading) {
          //     return const Center(
          //       child: CircularProgressIndicator(),
          //     );
          //   } else if (provider.downloadError != null) {
          //     return Center(
          //         child: IconButton(
          //       onPressed: provider.retry,
          //       icon: const Icon(CupertinoIcons.refresh_thin),
          //     ));
          //   }
          //   return IconButton(
          //     onPressed: () => provider.downloadCV(),
          //     icon: const Icon(
          //       CupertinoIcons.printer,
          //     ),
          //   );
          // })
        ],
      ),
      body: CupertinoTabScaffold(
        tabBuilder: (context, index) => CupertinoTabView(
          builder: (context) {
            return Consumer<CVProvider>(
              builder: (context, provider, _) {
                if (provider.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (provider.downloadError != null) {
                  return Center(
                    child: DefaultText(
                      text: 'Error loading CV',
                      style: AppTextStyles.body14(context),
                    ),
                  );
                }
                return CVPages.pages[index];
              },
            );
          },
        ),
        tabBar: CupertinoTabBar(
          activeColor: AppColors.accentBlue,
          inactiveColor: AppColors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Resume',
              activeIcon: Icon(
                Icons.person,
                color: AppColors.accentBlue,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Portfolio',
              activeIcon: Icon(
                Icons.work,
                color: AppColors.accentBlue,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Preferences',
              activeIcon: Icon(
                Icons.settings,
                color: AppColors.accentBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
