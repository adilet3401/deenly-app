import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle blackTitle(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
        fontSize: 17,
        fontWeight: FontWeight.w700,
        fontFamily: 'Nunito',
      );

  static TextStyle redTitle(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontSize: 17,
        // color: Colors.orange,
        fontWeight: FontWeight.bold,
        fontFamily: 'Nunito',
      );

  static TextStyle largeTitle(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontSize: 21,
        // color: Colors.orange,
        fontWeight: FontWeight.bold,
        fontFamily: 'Nunito',
      );
  static TextStyle salavatTitle(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
        // color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Nunito',
      );
  static TextStyle arabicTitle(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
        // color: Colors.black,
        fontSize: 21,
        fontWeight: FontWeight.bold,
        fontFamily: 'Nunito',
      );
  static TextStyle sunushTitle(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall!.copyWith(
        // color: Colors.black,
        fontSize: 21,
        fontWeight: FontWeight.bold,
        fontFamily: 'Nunito',
      );
  static TextStyle sunushTitle2(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall!.copyWith(
        // color: Colors.black,
        fontSize: 17,
        fontWeight: FontWeight.bold,
        fontFamily: 'Nunito',
      );
}
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class TextStyless {
  static final TextStyle redTitle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: Colors.red,
    fontFamily: 'Nunito',
  );
  static final TextStyle blackTitle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: Colors.black,
    fontFamily: 'Nunito',
  );
  static final TextStyle largeTitle = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: Colors.red,
    fontFamily: 'Nunito',
  );
  static final TextStyle salavatTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: 'Nunito',
  );
}

// const redText = TextStyles.redTitle;
