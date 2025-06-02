import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle blackTitle(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
        fontSize: 17,
        fontWeight: FontWeight.w700,
        fontFamily: GoogleFonts.nunito().fontFamily,
      );

  static TextStyle redTitle(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontSize: 17,
        // color: Colors.orange,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.nunito().fontFamily,
      );

  static TextStyle largeTitle(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontSize: 21,
        // color: Colors.orange,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.nunito().fontFamily,
      );
  static TextStyle salavatTitle(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
        // color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.nunito().fontFamily,
      );
  static TextStyle arabicTitle(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
        // color: Colors.black,
        fontSize: 21,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.nunito().fontFamily,
      );
  static TextStyle sunushTitle(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall!.copyWith(
        // color: Colors.black,
        fontSize: 21,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.nunito().fontFamily,
      );
  static TextStyle sunushTitle2(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall!.copyWith(
        // color: Colors.black,
        fontSize: 17,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.nunito().fontFamily,
      );
}
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class TextStyless {
  static final TextStyle redTitle = GoogleFonts.nunito(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );
  static final TextStyle blackTitle = GoogleFonts.nunito(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static final TextStyle largeTitle = GoogleFonts.nunito(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );
  static final TextStyle salavatTitle = GoogleFonts.nunito(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}

// const redText = TextStyles.redTitle;
