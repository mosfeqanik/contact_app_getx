import 'package:contacts_app_getx/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemes {

  static final TextStyle HeaderStylePage = GoogleFonts.playfairDisplay(
    fontSize: 30,
    color: AppColors.kTenBlackColor
  );
  static final TextStyle SearchBoxHintText = GoogleFonts.roboto(
      fontSize: 20,
    color: AppColors.kSecondaryGreyColor,
  );
  static final TextStyle ListVIewTitleTextStyle = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.kTenBlackColor,
  );
  static final TextStyle SubtitleTextStyle = GoogleFonts.roboto(
    fontSize: 15,fontWeight: FontWeight.w600,
    color: AppColors.kSecondaryGreyColor,
  );
  static final TextStyle leadingTextStyle = GoogleFonts.roboto(
    fontSize: 25,fontWeight: FontWeight.w800,
    color: AppColors.kTenPinkColor,
  );

}
