import 'package:bookly_app/core/util/navcontroll.dart';
import 'package:bookly_app/features/search/persentations/viewmodel/fetchs_sarchbook/fetchs_sarchbook_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchsSarchbookCubit, FetchsSarchbookState>(
      builder: (context, state) {
        if (state is FetchsSarchbooSuccess) {
          return ListView.builder(
            itemBuilder: (context, indx) {
              return GestureDetector(
                onTap: () => GoRouter.of(context)
                    .push(Navcontroll.Detailes, extra: state.books[indx]),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 5),
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: CachedNetworkImage(
                            imageUrl: state.books[indx].volumeInfo?.imageLinks
                                    ?.thumbnail ??
                                "",
                            width: 90,
                            height: 150,
                            fit: BoxFit.fitWidth,
                            errorWidget: (context, url, error) => Icon(
                              FontAwesomeIcons.book,
                              size: 50,
                              color: Colors.grey[300],
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                        height: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.books[indx].volumeInfo?.title != null
                                ? state.books[indx].volumeInfo!.title!.length >
                                        10
                                    ? state.books[indx].volumeInfo!.title!
                                            .substring(0, 10) +
                                        '...'
                                    : state.books[indx].volumeInfo!.title!
                                : "No title",
                          ),
                          Text(
                            state.books[indx].volumeInfo?.authors?.first ?? "",
                          ),
                          Row(
                            children: [
                              Text(
                                state.books[indx].saleInfo?.saleability ?? "",
                              ),
                              const SizedBox(
                                width: 123,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Icon(
                                      FontAwesomeIcons.star,
                                      size: 15,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Text(
                                    state.books[indx].saleInfo?.country ?? "",
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: state.books.length, // Adjust based on your data
          );
        } else if (state is FetchsSarchbookLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is FetchsSarchbooFaliuer) {
          return Center(
            child: Text(
              state.message,
            ),
          );
        }
        return const SizedBox
            .shrink(); // Add this line to return a default widget
      },
    );
  }
}
