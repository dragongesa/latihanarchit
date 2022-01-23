import 'package:auto_route/auto_route.dart';
import 'package:auto_route/annotations.dart';
import 'package:satria/app/modules/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:satria/app/modules/initial/view/initial_view.dart';
part 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'View|Page|Dialog,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: InitialView,
      initial: true,
      path: '/initialize',
    ),
    AutoRoute(
      page: HomeView,
      path: '/home',
    ),

  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
