import 'package:flutter/material.dart';

import '../../../../core/themes/app_themes.dart';

class WidgetButtonSearch extends StatelessWidget {
  const WidgetButtonSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      floating: true,
      snap: true,
      backgroundColor: appColor(context).useScheme.background,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SizedBox(
          height: 45,
          child: InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: () {
            },
            child: IgnorePointer(
              ignoring: true,
              child: SearchBar(
                textStyle: MaterialStatePropertyAll(
                  appFont(context).bodySmall,
                ),
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 20,
                  ),
                ),
                hintText: "Search University...",
                leading: Icon(
                  Icons.home_work_rounded,
                  color: appColor(context).useScheme.primary,
                  size: 20,
                ),
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(
                  appColor(context).useScheme.inversePrimary.withOpacity(0.2),
                ),
              ),
            ),
          ),
        ),
      ),
      toolbarHeight: kTextTabBarHeight + 5,
    );
  }
}
