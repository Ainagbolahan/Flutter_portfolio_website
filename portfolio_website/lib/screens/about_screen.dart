import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:portfolio_website/buttons/social_link_button.dart';
import 'package:portfolio_website/config/constants.dart';

class AboutScreen extends StatelessWidget {
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
                  fontFamily: 'SupermercadoOne',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                flex: 2,
                child: Text(
                  'Android. Flutter.Data Science.\n Finance and Accounting',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
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
