import 'package:bookly_app/features/Detailes/widgets/custom_Detailes_Appbar.dart';
import 'package:bookly_app/features/Detailes/widgets/detailse_item.dart';
import 'package:bookly_app/features/Detailes/widgets/view_ItemsSection.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/persentation/view_model/fech_similer_books/fech_similer_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/photo_for_detailes_item.dart';

class Detailesscreenbody extends StatefulWidget {
  @override
  final BookModel book;
  const Detailesscreenbody({required this.book});

  @override
  State<Detailesscreenbody> createState() => _DetailesscreenbodyState();
}

class _DetailesscreenbodyState extends State<Detailesscreenbody> {
  @override
  void initState() {
    super.initState();
    //treigger the cubit to fetch similer books
    BlocProvider.of<FechSimilerBooksCubit>(context).similer_books(
        category: widget.book.volumeInfo?.categories?[0] ?? "art",
        id: widget.book.id as String);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: customDetailesAppbar(),
          ),
          const SizedBox(
            width: double.infinity,
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 100.0,
              bottom: 20,
              top: 10,
            ),
            child: photoforidetailestem(
              imageUrl: widget.book.volumeInfo?.imageLinks?.thumbnail as String,
            ),
          ),
          detailseItem(
            book: widget.book,
          ),
          const SizedBox(
            height: 15,
            width: double.infinity,
          ),
          const Text('You can also like'),
          const SizedBox(
            height: 15,
            width: double.infinity,
          ),
          viewitemsSection(
            category: widget.book.volumeInfo?.categories?[0] ?? "art",
            id: widget.book.id as String,
          ),
        ],
      ),
    ));
  }
}

/*
class _DetailesscreenbodyState extends State<Detailesscreenbody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: customDetailesAppbar(),
          ),
          const SizedBox(
            width: double.infinity,
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 60.0,
            ),
            child: photoforidetailestem(
              imageUrl: widget.book.volumeInfo?.imageLinks?.thumbnail as String,
            ),
          ),
          const detailseItem(),
          const SizedBox(
            height: 15,
            width: double.infinity,
          ),
          const Text('You can also like'),
          const SizedBox(
            height: 15,
            width: double.infinity,
          ),
          const viewitemsSection(),
        ],
      ),
    ));
  }
}
*/