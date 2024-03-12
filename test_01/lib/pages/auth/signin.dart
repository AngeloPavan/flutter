// ignore_for_file: camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignIn_Page extends StatelessWidget {
  const SignIn_Page({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                stops: [0, 1],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFF4051B3),
                  Color(0xFF556EFC),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(
                  'assets/img/logo.png',
                  width: MediaQuery.of(context).size.width - 100,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Text(
                    "RocketBunny",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Fredoka',
                      fontSize: 50,
                      fontVariations: [
                        FontVariation('ital', 0),
                        FontVariation('wdth', 110.1),
                        FontVariation('wght', 600)
                      ],
                    ),
                  ),
                ),
                _button(
                  "Sign In",
                  () {},
                  Colors.transparent,
                  Colors.indigo,
                  Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "- Or -",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _button(
                  "Sign Up",
                  () {},
                  Colors.white,
                  Colors.transparent,
                  Colors.white,
                ),
                const Spacer(flex: 2)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _button(
    String text,
    Function onPressed,
    Color borderColor,
    Color backgroundColor,
    Color textColor,
  ) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => backgroundColor,
        ),
        shadowColor: MaterialStateColor.resolveWith(
          (states) => backgroundColor,
        ),
        side: MaterialStateProperty.all(
          BorderSide(
            color: borderColor,
            width: 1,
          ),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: textColor,
        ),
      ),
    );
  }
}
