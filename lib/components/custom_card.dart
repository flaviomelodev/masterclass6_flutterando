import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masterclass6_flutterando/styles/safe_colors.dart';
import 'package:masterclass6_flutterando/styles/safe_text.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key,
      required this.image1,
      required this.text1,
      required this.text2,
      required this.text3,
     })
      : super(key: key);

  final SvgPicture image1;
  final String text1;
  final String text2;
  final String text3;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 14, right: 14),
      child: Container(
        height: 220,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: SafeColors.generalColors.cardBackground,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 43,
                        width: 43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: SafeColors.generalColors.primary,
                        ),
                        child: Center(
                          child: image1,
                        ),
                      ),
                      const SizedBox(width: 13),
                      Text(
                        text1,
                        style: SafeText.headline2(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Exercícios: ',
                        style: SafeText.subtitle2(),
                      ),
                      Text(
                        text2,
                        style: SafeText.description1(),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 37, bottom: 32, right: 15, left: 16),
              child: Text(
                text3,
                style: SafeText.subtitle3(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/github.svg'),
                      const SizedBox(width: 13),
                      Text(
                        'Acessar código fonte',
                        style: SafeText.subtitle4(),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: SizedBox(
                      height: 34.5,
                      width: 119,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => SafeColors.generalColors.primary),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(23),
                            ),
                          ),
                        ),
                        child: Text(
                          'Ver mais',
                          style: SafeText.textButton(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
