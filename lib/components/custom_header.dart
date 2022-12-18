import 'package:flutter/material.dart';
import 'package:masterclass6_flutterando/styles/safe_text.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 42),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/images/logo.png', height: 48, width: 48),
              const SizedBox(width: 4),
              RichText(
                text: TextSpan(
                  text: 'Atividades\n',
                  style: SafeText.headline1(),
                  children: [
                    TextSpan(
                      text: 'Flutterando Masterclass',
                      style: SafeText.subtitle1(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Image.asset('assets/icons/Icon awesome-moon.png', width: 21.45, height: 24),),
        ],
      ),
    );
  }
}