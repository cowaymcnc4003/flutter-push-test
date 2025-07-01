import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:push_test_app/presentation/feature/push/push.dart';
import 'package:push_test_app/presentation/intro/intro_screen.dart';
import 'package:push_test_app/presentation/main/main_screen.dart';
import 'package:push_test_app/presentation/profile/profile_screen.dart';
import 'package:push_test_app/router/route_path.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: RoutePath.profile,
  routes: [
    GoRoute(
      path: RoutePath.intro,
      builder: (context, state) => const IntroScreen(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => MainScreen(
        currentSelected: 0,
        onDestinationSelected: (index) {},
        child: const Center(child: Text('mainScreen')),
      ),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(
          currentSelected: navigationShell.currentIndex,
          onDestinationSelected: (index) {
            navigationShell.goBranch(
              index!,
              initialLocation: index == navigationShell.currentIndex,
            );
          },
          child: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) {
                return const Center(child: Text('home'));
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/push',
              builder: (context, state) {
                return const Push();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePath.profile,
              builder: (context, state) {
                return const ProfileScreen();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
