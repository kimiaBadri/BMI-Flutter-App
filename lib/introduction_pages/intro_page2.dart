import 'package:bmi_app_2/introduction_pages/intro_page3.dart';
import 'package:bmi_app_2/widgets/intropages_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#fdffec'),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(34, 34, 34, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                getIntroWidgets(
                    context: context,
                    ImageName: '2',
                    title: 'Fill the fields',
                    body:
                        'Fill the custom fields of body weight and height for BMI Check to calculate your bmi '),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 190, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'varela',
                            fontWeight: FontWeight.w400,
                            color: HexColor('#57D935'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _getCircleAvatar('#D9D9D9'),
                          _getCircleAvatar('#57D935'),
                          _getCircleAvatar('#D9D9D9'),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return IntroPage3();
                              },
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.east,
                          size: 32,
                          color: HexColor('#57D935'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getCircleAvatar(color) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: HexColor(color),
          radius: 8.5,
        ),
      ],
    );
  }
}
