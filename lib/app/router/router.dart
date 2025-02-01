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
          path: '/text-styles',
          builder: (context, state) => TextStylePage(),
        ),
      ],
    ),
  ],
);

GoRouter get goRouter => _goRouter;
