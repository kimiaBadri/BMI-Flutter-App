import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/*Widget getContainer(
  VoidCallback onTap,
 bool isClicked,
   
  String containerColor,
  String title,
  String textColor,
  String iconColor,
) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: InkWell(
      onTap:onTap,
      
      child: Container(
        width: 156,
        height: 156,
        color: HexColor('$containerColor'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.person,
              size: 56,
              color: HexColor('$iconColor'),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '$title',
              style: TextStyle(
                fontFamily: 'varela',
                fontSize: 18,
                color: HexColor('$textColor'),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}*/

Widget getHeight() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(32, 6, 32, 10),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 344,
        height: 150,
        color: HexColor('#F0F1D9'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              ' Select your height (inches)',
              style: TextStyle(
                fontFamily: 'varela',
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '148',
              style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 16,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 300,
                height: 14,
                color: HexColor('#57D935'),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget getSecondContainer(
  String title,
  String number,
) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Container(
      width: 156,
      height: 160,
      color: HexColor('#F0F1D9'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$title',
              style: TextStyle(
                fontFamily: 'varela',
                fontSize: 20,
              )),
          SizedBox(
            height: 10,
          ),
          Text(
            '$number',
            style: TextStyle(
              fontFamily: 'patua',
              fontSize: 42,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: HexColor('#57D935'),
                child: TextButton(
                  onPressed: () {},
                  child: Icon(
                    FontAwesomeIcons.plus,
                    color: HexColor('#FFFFFF'),
                  ),
                ),
              ),
              SizedBox(
                width: 22,
              ),
              CircleAvatar(
                backgroundColor: HexColor('#57D935'),
                child: TextButton(
                  onPressed: () {},
                  child: Icon(
                    FontAwesomeIcons.minus,
                    color: HexColor('#FFFFFF'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
