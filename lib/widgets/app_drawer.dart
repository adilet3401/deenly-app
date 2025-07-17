import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

import '../theme/theme.dart';
import '../timeeng/asr_page.dart';
import '../timeeng/bagymdat_page.dart';
import '../timeeng/beshim_page.dart';
import '../timeeng/kuptan_page.dart';
import '../timeeng/sham_page.dart';

import 'javshann.dart';
import 'naariya_salavaty.dart';
import 'namaz_ubaktysy.dart';
import 'sunush_page.dart';
import 'tasbih_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color:
                  Theme.of(context).brightness == Brightness.dark
                      ? Color(0xff191b1e)
                      : Color(0xff16423C), // Фон заголовка
            ),
            child: Text(
              "بِسْمِ ٱللَّٰهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ",
              style: TextStyle(
                color:
                    Theme.of(context).brightness == Brightness.dark
                        ? Colors.orange
                        : Colors.white, // Цвет текста заголовка
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SwitchListTile(
            title: Text(
              'Караңгы режим',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            secondary: Icon(
              Icons.dark_mode,
              color:
                  Theme.of(context).brightness == Brightness.dark
                      ? Colors.orange
                      : Colors.black,
            ),
            value: Theme.of(context).brightness == Brightness.dark,
            onChanged: (bool value) {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            activeColor:
                Colors.orange, // Цвет переключателя в активном состоянии
            inactiveThumbColor:
                Colors.grey, // Цвет переключателя в неактивном состоянии
            inactiveTrackColor:
                Colors.grey.shade100, // Цвет трека в неактивном состоянии
          ),

          Divider(
            // color: themeData.dividerTheme.color, // Нежный серый цвет
            thickness: 1, // Толщина линии
            indent: 17, // Отступ слева
            endIndent: 17, // Отступ справа
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, top: 5, bottom: 5),
            child: Text(
              'Намаз убактысы',
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade500, // Светло-серый
                fontSize: 14, // Небольшой размер
                fontWeight: FontWeight.w500, // Средний вес шрифта
              ),
            ),
          ),
          UbakytTar(
            text: 'Багымдат',
            icon: Icons.looks_one,
            iconSize: 30,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BagymdatPage(),
                  settings: const RouteSettings(name: '/bagymdat'),
                ),
              );
            },
            isActive: ModalRoute.of(context)?.settings.name == '/bagymdat',
          ),
          UbakytTar(
            text: 'Бешим',
            icon: Icons.looks_two,
            iconSize: 30,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BeshimPage(),
                  settings: const RouteSettings(name: '/beshim'),
                ),
              );
            },
            isActive: ModalRoute.of(context)?.settings.name == '/beshim',
          ),
          UbakytTar(
            text: 'Аср',
            icon: Icons.looks_3,
            iconSize: 30,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AsrPage(),
                  settings: const RouteSettings(name: '/asr'),
                ),
              );
            },
            isActive: ModalRoute.of(context)?.settings.name == '/asr',
          ),
          UbakytTar(
            text: 'Шам',
            icon: Icons.looks_4,
            iconSize: 30,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShamPage(),
                  settings: const RouteSettings(name: '/sham'),
                ),
              );
            },
            isActive: ModalRoute.of(context)?.settings.name == '/sham',
          ),
          UbakytTar(
            text: 'Куптан',
            icon: Icons.looks_5,
            iconSize: 30,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const KuptanPage(),
                  settings: const RouteSettings(name: '/kuptan'),
                ),
              );
            },
            isActive: ModalRoute.of(context)?.settings.name == '/kuptan',
          ),
          Divider(
            // color: Colors.grey.shade400, // Нежный серый цвет
            thickness: 1, // Толщина линии
            indent: 17, // Отступ слева
            endIndent: 17, // Отступ справа
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, top: 5, bottom: 5),
            child: Text(
              'Жана башка маалыматтар',
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade500, // Светло-серый
                fontSize: 14, // Небольшой размер
                fontWeight: FontWeight.w500, // Средний вес шрифта
              ),
            ),
          ),
          UbakytTar(
            text: 'Тасбих',
            image: Image.asset("assets/beads.png", width: 28, height: 28),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const TasbihPage(),
                  settings: const RouteSettings(name: '/tasbih'),
                ),
              );
            },
            isActive: ModalRoute.of(context)?.settings.name == '/tasbih',
          ),
          // UbakytTar(
          //   text: 'Сунуштар',
          //   icon: Icons.help,
          //   onTap: () {
          //     Navigator.pushReplacement(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const SunushPage(),
          //         settings: const RouteSettings(name: '/sunush'),
          //       ),
          //     );
          //   },
          //   isActive: ModalRoute.of(context)?.settings.name == '/sunush',
          // ),
          UbakytTar(
            text: "Наария салаваты",
            image: Image.asset('assets/pray.png', width: 28, height: 28),
            isActive: ModalRoute.of(context)?.settings.name == '/salavat',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => NaariyaSalavat(),
                  settings: RouteSettings(name: '/salavat'),
                ),
              );
            },
          ),
          UbakytTar(
            text: 'Жавшан',
            image: Image.asset('assets/javshan.png', width: 28, height: 28),
            isActive: ModalRoute.of(context)?.settings.name == '/javshan',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => JavshannPage(),
                  settings: RouteSettings(name: '/javshan'),
                ),
              );
            },
          ),
          UbakytTar(
            text: 'Сунуштар',
            icon: Icons.help,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SunushPage(),
                  settings: const RouteSettings(name: '/sunush'),
                ),
              );
            },
            isActive: ModalRoute.of(context)?.settings.name == '/sunush',
          ),
        ],
      ),
    );
  }
}
