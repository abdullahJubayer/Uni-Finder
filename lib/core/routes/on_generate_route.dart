import 'package:edu_matchup/core/routes/unknown_page.dart';
import 'package:flutter/cupertino.dart';
import '../../views/auto_match_page/auto_match_page.dart';
import '../../views/entrypoint/entrypoint_ui.dart';
import '../../views/entrypoint/wrapper_menu_view.dart';
import '../../views/profile/notification_page.dart';
import '../../views/profile/profile_edit_page.dart';
import 'app_routes.dart';

class RouteGenerator {
  static Route? onGenerate(RouteSettings settings) {
    final route = settings.name;

    switch (route) {
      case AppRoutes.entryPoint:
        return CupertinoPageRoute(builder: (_) => const WrapperMenuView());

      case AppRoutes.profileEdit:
        return CupertinoPageRoute(builder: (_) => const ProfileEditPage());

      //
      // case AppRoutes.searchResult:
      //   return CupertinoPageRoute(builder: (_) => const SearchResultPage());

      default:
        return errorRoute();
    }
  }

  static Route? errorRoute() =>
      CupertinoPageRoute(builder: (_) => const UnknownPage());
}
