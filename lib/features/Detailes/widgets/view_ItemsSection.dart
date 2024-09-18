import 'package:bookly_app/features/Detailes/Screens/DetailesScreen.dart';
import 'package:bookly_app/features/home/persentation/view_model/fech_similer_books/fech_similer_books_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class viewitemsSection extends StatelessWidget {
  const viewitemsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FechSimilerBooksCubit, FechSimilerBooksState>(
      builder: (context, state) {
        if (state is FechSimilerBooksSuccess) {
          return SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () async {
                    print('id: ${state.books[index].id}');
                    BlocProvider.of<FechSimilerBooksCubit>(context)
                        .similer_books(
                            category:
                                state.books[index].volumeInfo?.categories?[0] ??
                                    '',
                            id: state.books[index].id ?? '0');
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => (Detailesscreen(
                          book: state.books[index],
                        )),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: CachedNetworkImage(
                      imageUrl: state.books[index].volumeInfo?.imageLinks
                          ?.thumbnail as String,
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FechSimilerBooksFailure) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
