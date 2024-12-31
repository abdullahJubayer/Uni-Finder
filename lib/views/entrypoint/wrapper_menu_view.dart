import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/routes/unknown_page.dart';
import '../../core/themes/app_themes.dart';
import '../auto_match_page/pesanan_view.dart';
import '../bookmark/views/bookmark_view.dart';
import '../home/views/home_view.dart';
import '../profile/profile_page.dart';

class WrapperMenuView extends StatefulWidget {
  const WrapperMenuView({super.key});

  @override
  State<WrapperMenuView> createState() => _WrapperMenuViewState();
}

class _WrapperMenuViewState extends State<WrapperMenuView> {
  int currentIndex = 2;
  PageController controller = PageController(initialPage: 2);


  void bottomTapped(int index) {
    setState(() {
      currentIndex = index;
      controller.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        controller: controller,
        onPageChanged: (v) {
          setState(() {
            currentIndex = v;
          });
        },
        scrollDirection: Axis.horizontal,
        children: const [
          MatchUi(),
          UnknownPage(),
          HomeView(),
          BookmarkView(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: Theme(
        data: appTheme(
          context
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: NavigationBar(
            height: 70,
            selectedIndex: currentIndex,
            onDestinationSelected: (v) {
              bottomTapped(v);
            },
            destinations: [
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.auto_awesome,
                  color: appColor(context).useScheme.primary,
                ),
                icon: Icon(
                  Icons.auto_awesome,
                ),
                label: 'Automatch',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.more_horiz,
                  color: appColor(context).useScheme.primary,
                ),
                icon: Icon(
                  Icons.more_horiz,
                ),
                label: 'More',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.home_filled,
                  color: appColor(context).useScheme.primary,
                ),
                icon: const Icon(
                  Icons.home_filled,
                ),
                label: 'Home',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.find_in_page,
                  color: appColor(context).useScheme.primary,
                ),
                icon: Icon(
                  Icons.find_in_page,
                ),
                label: 'Search',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.account_circle,
                  color: appColor(context).useScheme.primary,
                ),
                icon: const Icon(Icons.account_circle),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

