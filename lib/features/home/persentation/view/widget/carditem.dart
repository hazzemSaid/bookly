import 'package:bookly_app/core/util/navcontroll.dart';
import 'package:bookly_app/features/home/persentation/view/widget/image_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Carditem extends StatelessWidget {
  const Carditem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Set a fixed height for the horizontal list
      padding: const EdgeInsets.only(left: 5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, indx) {
          return GestureDetector(
            onTap: () => GoRouter.of(context).push(Navcontroll.Detailes),
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: item_image(),
            ),
          );
        },
        itemCount: 10, // Adjust based on your data
      ),
    );
  }
}
