import 'package:flutter/material.dart';
import 'package:masterclass6_flutterando/styles/safe_colors.dart';
import 'package:masterclass6_flutterando/styles/safe_text.dart';

class InfoMockup extends StatelessWidget {
  const InfoMockup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SafeColors.generalColors.scaffoldBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: SafeColors.generalColors.textHighlight,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'Mockup\n',
                            style: SafeText.headline1(),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Flutterando Masterclass',
                                style: SafeText.description1(),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Image.asset('assets/icons/Icon awesome-moon.png',
                        width: 21.45, height: 24),
                  ),
                ],
              ),
              const SizedBox(height: 26),
              SizedBox(
                height: 630,
                child: ListView(
                  children: const [
                    CustomCardMockup(text1: '1', text2: '01'),
                    SizedBox(height: 8),
                    CustomCardMockup(text1: '2', text2: '02'),
                    SizedBox(height: 8),
                    CustomCardMockup(text1: '3', text2: '03'),
                    SizedBox(height: 8),
                    CustomCardMockup(text1: '4', text2: '04'),
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

class CustomCardMockup extends StatelessWidget {
  const CustomCardMockup(
      {Key? key, required this.text1, required this.text2})
      : super(key: key);

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 405,
      decoration: BoxDecoration(
        color: SafeColors.generalColors.cardBackground,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding:
        const EdgeInsets.only(left: 14, top: 15, right: 13, bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 33,
              width: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: SafeColors.generalColors.primary,
              ),
              child: Center(
                child: Text(
                  text1,
                  style: SafeText.textButton1(),
                ),
              ),
            ),
            Text('Exercícios $text2', style: SafeText.headline2()),
          ],
        ),
      ),
    );
  }
}
