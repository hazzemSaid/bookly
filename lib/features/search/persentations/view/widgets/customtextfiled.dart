import 'package:bookly_app/features/search/persentations/viewmodel/fetchs_sarchbook/fetchs_sarchbook_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'inputborder.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        onSubmitted: (str) async {
          //trigger the search
          BlocProvider.of<FetchsSarchbookCubit>(context).fetchBooks(str);
        },
        decoration: InputDecoration(
          focusedBorder: Inputborder.inputBorder(),
          enabledBorder: Inputborder.inputBorder(),
          hintText: 'Search',
          suffixIcon: const Opacity(
            opacity: .6,
            child: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
