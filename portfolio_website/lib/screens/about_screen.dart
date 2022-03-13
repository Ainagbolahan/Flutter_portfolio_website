// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/buttons/social_link_button.dart';
import 'package:portfolio_website/config/constants.dart';

import '../constants.dart';

class AboutScreen extends StatefulWidget {
  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation =
        ColorTween(begin: Colors.grey, end: Colors.white).animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 200),
              const CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/avatar.png'),
              ),
              const SizedBox(height: 20),
              Text(
                'Aina Gbolahan A.',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontFamily: 'SupermercadoOne',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                  flex: 2,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SupermercadoOne',
                    ),
                    child: AnimatedTextKit(
                      displayFullTextOnTap: true,
                      animatedTexts: [
                        ColorizeAnimatedText(
                          'Flutter Mobile Developer',
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                          speed: Duration(milliseconds: 200),
                        ),
                        ColorizeAnimatedText(
                          'Python Data Scientist',
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                          speed: Duration(milliseconds: 200),
                        ),
                        ColorizeAnimatedText(
                          'Finance and Account Specialist',
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                          speed: Duration(milliseconds: 200),
                        ),
                        TypewriterAnimatedText(
                          'Flutter Mobile Developer.Data Scientist.\n Finance and Account Specialist ',
                          speed: Duration(milliseconds: 100),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(height: 30),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SocialLinkButton(
                      onPressed: () => html.window
                          .open(Constants.PROFILE_GITHUB, 'ainagbolahan'),
                      labelText: 'Github',
                      assetImage: 'assets/github.png',
                    ),
                    SocialLinkButton(
                      onPressed: () => html.window
                          .open(Constants.PROFILE_TWITTER, 'gbolahan_aina'),
                      labelText: 'Twitter',
                      assetImage: 'assets/twitter.png',
                    ),
                    SocialLinkButton(
                      onPressed: () => html.window
                          .open(Constants.PROFILE_LINKEDIN, 'ainagbolahan100'),
                      labelText: 'Linkedin',
                      assetImage: 'assets/linkedin.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
