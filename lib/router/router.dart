// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/annotations.dart';
import 'package:jc_bloc/pages/first.page.dart';
import 'package:jc_bloc/pages/user.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: FirstPage, initial: true),
    AutoRoute(page: UserListPage),
  ],
)
class $AppRouter {}
