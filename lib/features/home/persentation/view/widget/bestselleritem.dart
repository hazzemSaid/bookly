import 'package:bookly_app/constrain.dart';
import 'package:flutter/material.dart';

class bestSelleritems extends StatelessWidget {
  const bestSelleritems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(child: ListView.builder(itemBuilder: (context, indx) {
        return Container(
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 5),
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25),
                  child: Image.asset(
                    testImage2,
                    fit: BoxFit.contain,
                    height: 105,
                    width: 70,
                  ),
                ),
                SizedBox(
                  width: 10,
                  height: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Harry Potter and the Goblet of Fire"),
                    Text("J.K. Rowling"),
                    Row(
                      children: [
                        Text(
                          "19.99 €",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 123,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text("4.8 (2390)")
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ));
      })),
    );
  }
}
