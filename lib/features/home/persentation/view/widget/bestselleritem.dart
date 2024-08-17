import 'package:bookly_app/constrain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bestSelleritems extends StatelessWidget {
  const bestSelleritems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, indx) {
        return Container(
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
                  mainAxisAlignment: MainAxisAlignment.start,
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
                                )),
                            Text(
                              "4.8 (2390)",
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ));
      }),
    );
  }
}
