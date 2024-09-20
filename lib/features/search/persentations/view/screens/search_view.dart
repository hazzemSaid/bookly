import 'package:bookly_app/core/util/servise_locator.dart';
import 'package:bookly_app/features/search/data/search_repo_imp.dart';
import 'package:bookly_app/features/search/persentations/view/screens/search_view_body.dart';
import 'package:bookly_app/features/search/persentations/viewmodel/fetchs_sarchbook/fetchs_sarchbook_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchsSarchbookCubit(
        get<SearchRepoImp>(),
      ),
      child: const Scaffold(
        body: SafeArea(
          child: SearchViewBody(),
        ),
      ),
    );
  }
}
