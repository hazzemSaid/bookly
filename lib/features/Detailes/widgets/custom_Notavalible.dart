import 'package:flutter/material.dart';

class custom_Notavailable_buttom extends StatelessWidget {
  const custom_Notavailable_buttom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 50,
      width: 350,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 163, 34, 34),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Not available',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
