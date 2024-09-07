import 'package:bookly_app/features/Detailes/DetailesScreen.dart';
import 'package:bookly_app/features/home/persentation/view_model/homemodel.dart';
import 'package:bookly_app/features/search/search_view.dart';
import 'package:bookly_app/features/splash/presentation/view_model/widgets/splash_Screen.dart';
import 'package:go_router/go_router.dart';

abstract class Navcontroll {
  static const Splash_Screen = '/';
  static const homepage = '/Homepage';
  static const Detailes = '/Detailes';
  static const Search = '/Search';
  static final route = GoRouter(
    routes: [
      GoRoute(
        path: Search,
        builder: (context, state) {
          return const SearchView();
        },
      ),
      GoRoute(
        path: Splash_Screen,
        builder: (context, state) => const splash_Screen(),
      ),
      GoRoute(
        path: homepage,
        builder: (context, state) => const Homepage(),
      ),
      GoRoute(
          path: Detailes,
          builder: (context, state) {
            return const Detailesscreen();
          }),
    ],
  );
}
