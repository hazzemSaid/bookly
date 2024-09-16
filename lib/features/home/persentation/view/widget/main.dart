import 'package:bookly_app/constrain.dart';
import 'package:bookly_app/core/util/navcontroll.dart';
import 'package:bookly_app/core/util/servise_locator.dart';
import 'package:bookly_app/features/home/data/reops/home_repo_impl.dart';
import 'package:bookly_app/features/home/persentation/view_model/fetch_featured_books/fetch_featured_books_cubit.dart';
import 'package:bookly_app/features/home/persentation/view_model/fetch_newest_books/fetch_newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FetchNewestBooksCubit(get<HomeRepoImpl>())..FetchNewestBooks()),
        BlocProvider(
            create: (context) => FetchFeaturedBooksCubit(
                  get<HomeRepoImpl>(),
                )..FetchFeaturedBooks()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: Navcontroll.route,
        title: 'Bookly',
        themeMode: ThemeMode.system,
        darkTheme: ThemeData(
          scaffoldBackgroundColor: backGround,
          primaryColor: Colors.white,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
