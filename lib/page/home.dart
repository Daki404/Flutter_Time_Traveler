import 'package:flutter/material.dart';

import 'package:neon_widgets/neon_widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          ],
        ),
      ),
    );
  }
}
