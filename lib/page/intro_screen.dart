import 'package:flutter/material.dart';

import 'package:time_traveler/data/texts.dart';

import 'package:neon_widgets/neon_widgets.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  Texts texts = Texts();
  int text_idx = 0;

  AnimatedTextKit get_next_animated_text(int idx) {
    return AnimatedTextKit(
      key: ValueKey(idx),
      animatedTexts: [
        TypewriterAnimatedText(
          texts.texts[idx],
          speed: const Duration(milliseconds: 100),
          textStyle: Theme.of(context).textTheme.displayMedium,
        ),
      ],
      isRepeatingAnimation: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    print(text_idx);
    Widget animatedTextKit = get_next_animated_text(text_idx);

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
                    padding: const EdgeInsets.fromLTRB(4, 60, 0, 0),
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
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    text_idx++;
                  });
                },
                child: AbsorbPointer(
                  child: animatedTextKit,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
