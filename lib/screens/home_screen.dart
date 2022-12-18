import 'package:flutter/material.dart';
import 'package:masterclass6_flutterando/components/custom_bottom_bar.dart';
import 'package:masterclass6_flutterando/components/custom_header.dart';
import 'package:masterclass6_flutterando/components/custom_card.dart';
import 'package:masterclass6_flutterando/styles/safe_colors.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SafeColors.generalColors.scaffoldBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomHeader(),
            SizedBox(
              height: 630,
              child: ListView.builder(
                itemCount: customCard.length,
                itemBuilder: (context, index) {
                  return customCard[index];
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}

final List<CustomCard> customCard = [
  CustomCard(
      image1: SvgPicture.asset('assets/icons/running.svg'),
      text1: 'Animações',
      text2: '4',
      text3:
          'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos'),
  CustomCard(
      image1: SvgPicture.asset('assets/icons/glasses.svg'),
      text1: 'Leitura de Mockup',
      text2: '2',
      text3:
          'Aplicação da técnica de leitura de mockup, contendo 2 exercícios'),
  CustomCard(
      image1: SvgPicture.asset('assets/icons/material_toys.svg'),
      text1: 'Playground',
      text2: '3',
      text3: 'Ambiente destinado a testes e estudos em geral'),
];
