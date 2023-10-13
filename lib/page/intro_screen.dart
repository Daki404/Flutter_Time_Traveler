import 'package:flutter/material.dart';

import 'package:time_traveler/data/texts.dart';

import 'package:neon_widgets/neon_widgets.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  Texts texts = Texts();
  int text_idx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              'Home',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Stack(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(4, 60, 0, 0),
                    alignment: Alignment.center,
                    child: FlickerNeonPoint(
                      spreadColor: Theme.of(context).primaryColor,
                      flickerTimeInMilliSeconds: 2000,
                      lightSpreadRadius: 40,
                      lightBlurRadius: 100,
                      randomFlicker: false,
                    )),
                Center(child: Image.asset('assets/mic.png')),
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (text_idx < texts.texts.length - 1) {
                    text_idx++;
                  } else {
                    Navigator.pushNamed(context, '/quiz');
                  }
                });
              },
              child: Text(
                texts.texts[text_idx],
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
