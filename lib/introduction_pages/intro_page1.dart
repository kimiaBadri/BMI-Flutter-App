import 'package:bmi_app_2/widgets/intropages_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:bmi_app_2/introduction_pages/intro_page2.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#fdffec'),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                getIntroWidgets(
                    context: context,
                    ImageName: '1',
                    title: ' Welcome to BMI Check',
                    body:
                        'Discover if you have the ideal body mass index in a simple and fast way'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 160, 20, 0),
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
                      _getCircleAvatar('#57D935'),
                      _getCircleAvatar('#D9D9D9'),
                      _getCircleAvatar('#D9D9D9'),
                      SizedBox(
                        width: 70,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return IntroPage2();
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
