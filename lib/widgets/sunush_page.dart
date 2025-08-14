import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabr/text_styles/title_theme.dart';
import 'package:sabr/widgets/app_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class SunushPage extends StatelessWidget {
  const SunushPage({super.key});

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Не удалось открыть $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffF2EFE7),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Сунуштар',
          style: GoogleFonts.nunito(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        // backgroundColor: const Color(0xff16423C),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/happy.png'),
                width: 120,
                height: 120,
              ),
              const SizedBox(height: 20),
              Text(
                "Ассалому алейкум!",
                textAlign: TextAlign.center,
                style: TextStyles.sunushTitle(context),
              ),
              const SizedBox(height: 10),
              Text(
                "Бул тиркемеде каталарды тапсаныз, же сунуштар болсо, бизге жазыныз:",
                textAlign: TextAlign.center,
                style: TextStyles.sunushTitle2(context),
              ),
              const SizedBox(height: 20),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green,
                      size: 33,
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () => _launchURL('https://wa.me/996505533770'),
                      child: Text(
                        "WhatsApp",
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      FontAwesomeIcons.telegram,
                      color: Colors.blue,
                      size: 33,
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () => _launchURL('https://t.me/adn3401'),
                      child: Text(
                        "Telegram",
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
