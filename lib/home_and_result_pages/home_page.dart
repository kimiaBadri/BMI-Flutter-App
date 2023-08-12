import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_app_2/widgets/homepage_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ageCounter = 0;
  int weightCounter = 0;

  bool isContainerClicked = false;

  void containerClick() {
    setState(() {
      isContainerClicked = !isContainerClicked;
    });
  }

  void incrementAgeCounter() {
    setState(() {
      ageCounter++;
    });
  }

  void decrementAgeCounter() {
    if (ageCounter <= 0) return;
    setState(() {
      ageCounter--;
    });
  }

  void incrementWeightCounter() {
    setState(() {
      weightCounter++;
    });
  }

  void decrementWeightCounter() {
    if (weightCounter <= 0) return;
    setState(() {
      weightCounter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#fdffec'),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(34, 34, 34, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BMI',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        'Check',
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.settings_outlined,
                    size: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Select your sex',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'varela',
                fontSize: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getContainer(),
                  /*getContainer(
                    toggleContainerClicked,
                isContainerClicked,
                    '#F0F1D9',
                    'Feminine ',
                    '#313935',
                    '#313935',
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  getContainer(
                    
                toggleContainerClicked,
                !isContainerClicked,
                    '#57D935',
                    'Masculine',
                    '#313935',
                    '#313935',
                  ),*/
                ],
              ),
            ),
            getHeight(),
            getSecContainer(),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: HexColor('#57D935'),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                minimumSize: Size(340, 50),
              ),
              onPressed: () {},
              child: Text(
                'Calculate',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getButtons(VoidCallback increment, VoidCallback decrement) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: HexColor('#57D935'),
          child: TextButton(
            onPressed: () {
              increment();
            },
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
            onPressed: () {
              decrement();
            },
            child: Icon(
              FontAwesomeIcons.minus,
              color: HexColor('#FFFFFF'),
            ),
          ),
        ),
      ],
    );
  }

  Widget getSecContainer() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 156,
              height: 160,
              color: HexColor('#F0F1D9'),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('age',
                      style: TextStyle(
                        fontFamily: 'varela',
                        fontSize: 20,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$ageCounter',
                    style: TextStyle(
                      fontFamily: 'patua',
                      fontSize: 42,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  getButtons(incrementAgeCounter, decrementAgeCounter),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 34,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 156,
              height: 160,
              color: HexColor('#F0F1D9'),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('weight(Kg)',
                      style: TextStyle(
                        fontFamily: 'varela',
                        fontSize: 20,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$weightCounter',
                    style: TextStyle(
                      fontFamily: 'patua',
                      fontSize: 42,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  getButtons(incrementWeightCounter, decrementWeightCounter)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getContainer() {
    return TextButton(
        onPressed: () {
          containerClick();
        },
        child: Container(
            width: 156,
            height: 156,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: isContainerClicked
                  ? HexColor('#57D935')
                  : HexColor('#F0F1D9'),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.personDress,
                  size: 56,
                  color: isContainerClicked
                      ? HexColor('#FAFBF0')
                      : HexColor('#313935'),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Feminine',
                  style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 18,
                    color: isContainerClicked
                        ? HexColor('#FAFBF0')
                        : HexColor('#313935'),
                  ),
                )
              ],
            ),
            ),
            );
  }
}
