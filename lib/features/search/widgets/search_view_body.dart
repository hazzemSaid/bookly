import 'package:bookly_app/features/search/widgets/customtextfiled.dart';
import 'package:bookly_app/features/search/widgets/searchlistview.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFieldWidget(),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, bottom: 0),
          child: Text(
            "Search Results",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(child: SearchListView()),
      ],
    );
  }
}
