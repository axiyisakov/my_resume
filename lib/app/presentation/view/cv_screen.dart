import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/app/presentation/animation/animation.dart';
import 'package:my_resume/app/presentation/provider/cv_provider.dart';
import 'package:my_resume/app/presentation/widget/default_text.dart';
import 'package:my_resume/core/extension/extension.dart';
import 'package:my_resume/core/pages.dart';
import 'package:my_resume/core/theme/colors.dart';
import 'package:my_resume/core/theme/fontsize.dart';
import 'package:provider/provider.dart';

class CVScreen extends StatelessWidget {
  const CVScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Consumer<CVProvider>(builder: (context, provider, _) {
          return Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: CupertinoSwitch(
              value: provider.isLightTheme,
              onChanged: (value) {
                context.changeTheme(value);
                provider.changeTheme(value);
              },
            ),
          );
        }),
        title: DefaultText(
          text: 'My CV',
          style: AppTextStyles.title22(
            context,
            color: AppColors.accentBlue,
          ),
        ).headerTitleAnimation(),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.printer,
            ),
          )
        ],
      ),
      body: CupertinoTabScaffold(
        tabBuilder: (context, index) => CupertinoTabView(
          builder: (context) {
            return Consumer<CVProvider>(
              builder: (context, value, _) => CVPages.pages[index],
            );
          },
        ),
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Resume',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Portfolio',
            ),
          ],
        ),
      ),
    );
  }
}
