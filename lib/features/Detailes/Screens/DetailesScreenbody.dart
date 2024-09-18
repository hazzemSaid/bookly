import 'package:bookly_app/features/Detailes/widgets/custom_Detailes_Appbar.dart';
import 'package:bookly_app/features/Detailes/widgets/detailse_item.dart';
import 'package:bookly_app/features/Detailes/widgets/view_ItemsSection.dart';
import 'package:bookly_app/features/home/persentation/view_model/fech_similer_books/fech_similer_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/photo_for_detailes_item.dart';

class Detailesscreenbody extends StatelessWidget {
  const Detailesscreenbody({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<FechSimilerBooksCubit, FechSimilerBooksState>(
        builder: (context, state) {
          if (state is FechSimilerBooksSuccess) {
            return const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: customDetailesAppbar(),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 60.0,
                    ),
                    child: photoforidetailestem(
                        //image for product
                        ),
                  ),
                  detailseItem(),
                  SizedBox(
                    height: 15,
                    width: double.infinity,
                  ),
                  Text('You can also like'),
                  SizedBox(
                    height: 15,
                    width: double.infinity,
                  ),
                  viewitemsSection(),
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
