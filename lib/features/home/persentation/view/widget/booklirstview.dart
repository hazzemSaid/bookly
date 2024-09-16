import 'dart:math';

import 'package:bookly_app/core/util/navcontroll.dart';
import 'package:bookly_app/features/home/persentation/view_model/fetch_newest_books/fetch_newest_books_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class bookListView extends StatelessWidget {
  const bookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewestBooksCubit, FetchNewestBooksState>(
      builder: (context, state) {
        if (state is FetchNewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(), // Prevent ListView from scrolling independently
            itemBuilder: (context, indx) {
              return GestureDetector(
                onTap: () => GoRouter.of(context).push(Navcontroll.Detailes),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 5),
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 25),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            imageUrl: state.books[indx].volumeInfo?.imageLinks
                                ?.thumbnail as String,
                            height: 100,
                            width: 70,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                        height: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${state.books[indx].volumeInfo!.title?.substring(0, min(state.books[indx].volumeInfo!.title!.length, 40))}...",
                            style: const TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            state.books[indx].volumeInfo!.authors?[0]
                                    ?.substring(
                                        0,
                                        min<int>(
                                            state.books[indx].volumeInfo!
                                                .authors![0]!.length,
                                            10)) ??
                                '',
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(state.books[indx].saleInfo!.saleability
                                  as String),
                              const SizedBox(
                                width: 50,
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
                                      "${(state.books[indx].volumeInfo!.pageCount! % 3.99).toString().substring(0, 4)}"
                                      "  "
                                      "(${state.books[indx].volumeInfo!.pageCount ?? 'N/A'})"),
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
        } else {
          return const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [CircularProgressIndicator()],
          );
        }
      },
    );
  }
}
