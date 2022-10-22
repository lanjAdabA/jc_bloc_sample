// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../pages/first.page.dart' as _i1;
import '../pages/user.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    FirstRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.FirstPage(),
      );
    },
    UserListRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.UserListPage(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          FirstRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          UserListRoute.name,
          path: '/user-list-page',
        ),
      ];
}

/// generated route for
/// [_i1.FirstPage]
class FirstRoute extends _i3.PageRouteInfo<void> {
  const FirstRoute()
      : super(
          FirstRoute.name,
          path: '/',
        );

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i2.UserListPage]
class UserListRoute extends _i3.PageRouteInfo<void> {
  const UserListRoute()
      : super(
          UserListRoute.name,
          path: '/user-list-page',
        );

  static const String name = 'UserListRoute';
}
