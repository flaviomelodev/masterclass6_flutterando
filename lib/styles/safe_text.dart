import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masterclass6_flutterando/styles/safe_colors.dart';

class SafeText {

  static TextStyle  headline1 ({
    Color? color,
    FontWeight? fontWeight,
}) {
    return GoogleFonts.poppins(
      color: SafeColors.generalColors.textHighlight,
      fontWeight: FontWeight.w600,
      fontSize: 20,
    );
  }

  static TextStyle  headline2 ({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.poppins(
      color: SafeColors.generalColors.textHighlight,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    );
  }

  static TextStyle  subtitle1 ({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.poppins(
      color: SafeColors.generalColors.textHighlight,
      fontWeight: FontWeight.w500,
      fontSize: 12,
    );
  }

  static TextStyle  subtitle2 ({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.montserrat(
      color: SafeColors.generalColors.bodyText,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    );
  }

  static TextStyle  subtitle3 ({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.montserrat(
      color: SafeColors.generalColors.bodyText,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    );
  }

  static TextStyle  subtitle4 ({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.montserrat(
      color: SafeColors.generalColors.textHighlight,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    );
  }


  static TextStyle  description1 ({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.poppins(
      color: SafeColors.generalColors.textHighlight,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    );
  }

  static TextStyle  textButton ({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.poppins(
      color: SafeColors.generalColors.textHighlight,
      fontWeight: FontWeight.w600,
      fontSize: 12,
    );
  }

  static TextStyle  textButton1 ({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.poppins(
      color: SafeColors.generalColors.textHighlight,
      fontWeight: FontWeight.w500,
      fontSize: 15,
    );
  }
}