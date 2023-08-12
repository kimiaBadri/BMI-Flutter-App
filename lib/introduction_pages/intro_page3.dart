import 'package:bmi_app_2/home_and_result_pages/home_page.dart';
import 'package:bmi_app_2/widgets/intropages_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

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
                    ImageName: '3',
                    title: 'Fill the fields',
                    body:
                        '  Fill the custom fields of body weight and height for BMI Check to calculate your bmi'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 180, 2, 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            color: HexColor('#57D935'),
                            width: 330,
                            height: 56,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return HomePage();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'varela',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
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
}
