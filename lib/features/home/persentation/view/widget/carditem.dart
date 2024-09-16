import 'package:bookly_app/core/util/navcontroll.dart';
import 'package:bookly_app/features/home/persentation/view/widget/image_item.dart';
import 'package:bookly_app/features/home/persentation/view_model/fetch_featured_books/fetch_featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Carditem extends StatelessWidget {
  const Carditem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFeaturedBooksCubit, FetchFeaturedBooksState>(
      builder: (context, state) {
        if (state is FetchFeaturedBooksSccuess) {
          return Container(
            height: 200, // Set a fixed height for the horizontal list
            padding: const EdgeInsets.only(left: 5),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, indx) {
                return GestureDetector(
                  onTap: () => GoRouter.of(context).push(Navcontroll.Detailes),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: item_image(
                      book: state.books[indx],
                    ),
                  ),
                );
              },
              itemCount: state.books.length, // Adjust based on your data
            ),
          );
        } else if (state is FetchFeaturedBooksFailure) {
          return Text(state
              .message); // Return an error message if state is FetchFeaturedBooksFailure
        } else {
          return const CircularProgressIndicator(); // Return an empty widget if state is not FetchFeaturedBooksSccuess
        }
      },
    );
  }
}
