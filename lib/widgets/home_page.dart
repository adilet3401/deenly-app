// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sabr/text_styles/title_colors.dart';
// import 'package:sabr/widgets/app_drawer.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffF2EFE7),
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.white),
//         backgroundColor: Color(0xff16423C),
//         title: Text(
//           'Башкы бет',
//           style: GoogleFonts.nunito(
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: Text(
//               'Ассалому алейкум!',
//               style: TextStyles.blackTitle,
//               textAlign: TextAlign.center,
//             ),
//           ),
//           SizedBox(height: 30),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Color(0xff16423C),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(30),
//               ),
//             ),
//             onPressed: () {},
//             child: Container(
//               width: 200,
//               height: 60,
//               decoration: BoxDecoration(
//                 color: Color(0xff16423C),
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: Center(
//                 child: Text(
//                   'Баштоо!',
//                   style: TextStyles.blackTitle.copyWith(color: Colors.white),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       drawer: AppDrawer(),
//     );
//   }
// }
