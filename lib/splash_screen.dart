import 'package:flutter/material.dart';
import 'package:masterclass6_flutterando/styles/safe_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300)).then(
      (value) => Navigator.of(context).pushNamed('/home'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: SafeColors.generalColors.scaffoldBackground,
        child: Padding(
          padding: const EdgeInsets.only(left: 71, right: 70),
          child: Image.asset('assets/images/masterclass_logo.png'),
        ),
      ),
    );
  }
}
