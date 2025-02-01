import 'package:go_router/go_router.dart';

import '../app.dart';
import '../../pages/pages.dart';

final CustomRouteObserver _routeObserver = CustomRouteObserver();

final GoRouter _goRouter = GoRouter(
  observers: [_routeObserver],
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
      routes: <RouteBase>[
        GoRoute(
          path: '/detail',
          builder: (context, state) => DetailPage(),
        ),
        GoRoute(
          path: '/text-page',
          builder: (context, state) => TextPage(),
        ),
        GoRoute(
          path: '/button-page',
          builder: (context, state) => ButtonPage(),
        ),
        GoRoute(
          path: '/form-page',
          builder: (context, state) => FormPage(),
        ),
        GoRoute(
          path: '/misc-page',
          builder: (context, state) => MiscPage(),
        ),
      ],
    ),
  ],
);

GoRouter get goRouter => _goRouter;
