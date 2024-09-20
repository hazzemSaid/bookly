import 'package:bookly_app/core/util/servise_locator.dart';
import 'package:bookly_app/features/Detailes/Screens/DetailesScreen.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/reops/home_repo_impl.dart';
import 'package:bookly_app/features/home/persentation/view/Screens/home_screen.dart';
import 'package:bookly_app/features/home/persentation/view_model/fech_similer_books/fech_similer_books_cubit.dart';
import 'package:bookly_app/features/search/persentations/view/screens/search_view.dart';
import 'package:bookly_app/features/splash/presentation/view_model/widgets/splash_Screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            return BlocProvider(
              create: (context) => FechSimilerBooksCubit(
                get<HomeRepoImpl>(),
              ),
              child: Detailesscreen(
                book: state.extra != null
                    ? state.extra as BookModel
                    : BookModel(),
              ),
            );
          }),
    ],
  );
}
