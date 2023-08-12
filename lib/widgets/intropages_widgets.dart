import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget getIntroWidgets(
    {required BuildContext context,
    required ImageName,
    required String title,
    required String body}) {
  return Column(
    children: [
      Image(
        image: AssetImage('images/intro_images/$ImageName.png'),
      ),
      SizedBox(
        height: 12,
      ),
      Text(
        '$title',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w400,
          color: HexColor('#313935'),
        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        '$body',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            fontFamily: '',
            color: HexColor('#313935')),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
