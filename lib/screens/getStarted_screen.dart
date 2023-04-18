import 'package:flutter/material.dart';

import '../constant.dart';
import 'home_screen.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/background.png",
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [
                0.1,
                0.3,
                0.9
              ],
                  colors: [
                Colors.black,
                Colors.black.withOpacity(0.5),
                Colors.white.withOpacity(0.1),
              ])),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(
                flex: 8,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Find Your ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      fontSize: 36),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Best \n',
                      style: TextStyle(
                          color: darkBlue,
                          decoration: TextDecoration.underline,
                          letterSpacing: 1.2),
                    ),
                    TextSpan(
                      text: 'Collections',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              FilledButton(
                  style: FilledButton.styleFrom(
                      minimumSize: const Size(277, 71),
                      backgroundColor: darkBlue,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        HomeScreen.routename, (route) => false);
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  )),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
