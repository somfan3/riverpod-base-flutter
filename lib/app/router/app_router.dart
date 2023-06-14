import 'package:anime_wiki/app/constants/constants.dart';
import 'package:anime_wiki/app/router/router_observer.dart';
import 'package:anime_wiki/pages/root/root_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: RouterConstants.rootPath,
    observers: [GoRouterObserver()],
    routes: [
      GoRoute(
        name: RouterConstants.root,
        path: RouterConstants.rootPath,
        builder: (context, state) => const RootPage(),
      ),
    ],
  );
}
