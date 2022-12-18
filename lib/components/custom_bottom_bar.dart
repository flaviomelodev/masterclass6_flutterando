import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masterclass6_flutterando/styles/safe_colors.dart';
import 'package:masterclass6_flutterando/styles/safe_text.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: SafeColors.generalColors.scaffoldBackground,
      child: SizedBox(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(left: 28, right: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Atividades
              Column(
                children: [
                  InkWell(
                      focusColor: SafeColors.generalColors.cardBackground,
                      onTap: (){},
                      child: SvgPicture.asset('assets/icons/Icon feather-target.svg', width: 24, height: 24)),
                  const SizedBox(height: 7),
                  Text('Atividades', style: SafeText.subtitle4(),)
                ],
              ),
              //Repositórios
              Column(
                children: [
                  SvgPicture.asset('assets/icons/github.svg'),
                  const SizedBox(height: 7),
                  Text('Repositórios', style: SafeText.subtitle4(),)
                ],
              ),
              //Sobre o Dev
              Column(
                children: [
                  Icon(Icons.person, size: 24, color: SafeColors.generalColors.textHighlight),
                  const SizedBox(height: 7),
                  Text('Sobre o Dev', style: SafeText.subtitle4(),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}