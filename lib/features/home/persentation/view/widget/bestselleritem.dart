import 'package:bookly_app/constrain.dart';
import 'package:bookly_app/core/util/navcontroll.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerItems extends StatelessWidget {
  const BestSellerItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics:
          NeverScrollableScrollPhysics(), // Prevent ListView from scrolling independently
      itemBuilder: (context, indx) {
        return GestureDetector(
          onTap: () => GoRouter.of(context).go(Navcontroll.Detailes),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(bottom: 5),
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 25),
                  child: Image.asset(
                    testImage2,
                    fit: BoxFit.contain,
                    height: 105,
                    width: 70,
                  ),
                ),
                const SizedBox(
                  width: 10,
                  height: 50,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Harry Potter and the Goblet of Fire",
                    ),
                    Text(
                      "J.K. Rowling",
                    ),
                    Row(
                      children: [
                        Text(
                          "19.99 €",
                        ),
                        SizedBox(
                          width: 123,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                FontAwesomeIcons.star,
                                size: 15,
                                color: Colors.yellow,
                              ),
                            ),
                            Text(
                              "4.8 (2390)",
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
      itemCount: 10, // Adjust based on your data
    );
  }
}
