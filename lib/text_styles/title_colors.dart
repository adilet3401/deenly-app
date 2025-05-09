import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle blackTitle(BuildContext context) => Theme.of(
    context,
  ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold);

  static TextStyle redTitle(BuildContext context) => Theme.of(context)
      .textTheme
      .bodyLarge!
      .copyWith(color: Colors.red, fontWeight: FontWeight.bold);

  static TextStyle largeTitle(BuildContext context) => Theme.of(
    context,
  ).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold);
}
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class TextStyless {
  static final TextStyle redTitle = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );
  static final TextStyle blackTitle = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static final TextStyle largeTitle = GoogleFonts.nunito(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );
  static final TextStyle salavatTitle = GoogleFonts.nunito(
    fontSize: 19,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}

// const redText = TextStyles.redTitle;
