import 'package:bookly_app/features/home/persentation/view/widget/image_item.dart';
import 'package:flutter/material.dart';

class Carditem extends StatelessWidget {
  const Carditem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, indx) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: item_image(),
            );
          },
        ),
      ),
    );
  }
}
