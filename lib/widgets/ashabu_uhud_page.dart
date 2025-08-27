import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabr/widgets/app_drawer.dart';

class AshabuUhudPage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      "id": "1",
      "title": "Ваби Саййидина",
      "subtitle": "ХАМЗА ИБНИ АБДУЛМУТАЛИБ",
      "detail": "Аль-Мухажири (р.а)",
    },
    {
      "id": "2",
      "title": "Ваби Саййидина",
      "subtitle": "АБИ АЙМАН МАВЛА АМР",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "3",
      "title": "Ваби Саййидина",
      "subtitle": "АБУ ХАННА",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "4",
      "title": "Ваби Саййидина",
      "subtitle": "АБУ СУРЙАН ИБНИ АЛЬ ХАРИЙА",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "5",
      "title": "Ваби Саййидина",
      "subtitle": "АБУ ХУРАЙРА ИБНИ АЛЬ ХАРИС",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "6",
      "title": "Ваби Саййидина",
      "subtitle": "АНАС ИБНИ НАДР",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "7",
      "title": "Ваби Саййидина",
      "subtitle": "УЙАНС ИБНИ КАТАДА",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "8",
      "title": "Ваби Саййидина",
      "subtitle": "АУС ИБНИ АЛЬ АРКАМ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "9",
      "title": "Ваби Саййидина",
      "subtitle": "АУС ИБНИ САБИТ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "10",
      "title": "Ваби Саййидина",
      "subtitle": "ИЙАС ИБНИ АУС",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "11",
      "title": "Ваби Саййидина",
      "subtitle": "ИЙАС ИБНИ АДИЙЙ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "12",
      "title": "Ваби Саййидина",
      "subtitle": "САБИТ ИБНИ АМР",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "13",
      "title": "Ваби Саййидина",
      "subtitle": "САБИТ ИБНИ ВАКШ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "14",
      "title": "Ваби Саййидина",
      "subtitle": "САЛАБА ИБНИ СААД",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "15",
      "title": "Ваби Саййидина",
      "subtitle": "САКФ ИБНИ ФАРВА",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "16",
      "title": "Ваби Саййидина",
      "subtitle": "АЛЬ ХАРИС ИБНИ АНАС",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "17",
      "title": "Ваби Саййидина",
      "subtitle": "АЛЬХАРИС ИБНИ АВС",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "18",
      "title": "Ваби Саййидина",
      "subtitle": "АЛЬ ХАРИС ИБНИ АДИЙЙ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "19",
      "title": "Ваби Саййидина",
      "subtitle": "ХУБАБ ИБНИ КАЙЗИЙЙ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "20",
      "title": "Ваби Саййидина",
      "subtitle": "ХУБАЙБ ИБНИ ЙАЗИД",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "21",
      "title": "Ваби Саййидина",
      "subtitle": "ХУСАЙЛ ИБНИ ЖАБИР",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "22",
      "title": "Ваби Саййидина",
      "subtitle": "ХАНЗАЛА ИБНИ АМР",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "23",
      "title": "Ваби Саййидина",
      "subtitle": "ХАРИЖА ИБНИ ЗАЙД",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "24",
      "title": "Ваби Саййидина",
      "subtitle": "ХАЛАД ИБНИ АМР",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "25",
      "title": "Ваби Саййидина",
      "subtitle": "ХАЙШАМЛА ИБНИ АБУ СААД",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "26",
      "title": "Ваби Саййидина",
      "subtitle": "ЗАКВАН ИБНИ АБДУ ГОЙС",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "27",
      "title": "Ваби Саййидина",
      "subtitle": "РИФАА ИБНИ АМР",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "28",
      "title": "Ваби Саййидина",
      "subtitle": "РИФАА ИБНИ ВАКШ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "29",
      "title": "Ваби Саййидина",
      "subtitle": "СУБАЙ ИБНИ ХАТИБ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "30",
      "title": "Ваби Саййидина",
      "subtitle": "СААД ИБНИ АР РОБИ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "31",
      "title": "Ваби Саййидина",
      "subtitle": "САЙД ИБНИ СУВАЙД",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "32",
      "title": "Ваби Саййидина",
      "subtitle": "САЛАМА ИБНИ САБИТ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "33",
      "title": "Ваби Саййидина",
      "subtitle": "САХЛ ИБНИ КАЙА",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "34",
      "title": "Ваби Саййидина",
      "subtitle": "СУЛАЙМ ИБНИ АЛЬ ХАРИС",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "35",
      "title": "Ваби Саййидина",
      "subtitle": "СУЛАЙМ ИБНИ АМР",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "36",
      "title": "Ваби Саййидина",
      "subtitle": "ШАММАС ИБНИ ОСМАН",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "37",
      "title": "Ваби Саййидина",
      "subtitle": "САФИЙ ИБНИ КАЙЗИЙ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "38",
      "title": "Ваби Саййидина",
      "subtitle": "ДАМРО АЛЬ ЖУХАЙНИЙ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "39",
      "title": "Ваби Саййидина",
      "subtitle": "АМР ИБНИ МАХЛИД",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "40",
      "title": "Ваби Саййидина",
      "subtitle": "УБАДА ИБНИ ХАСХАС",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "41",
      "title": "Ваби Саййидина",
      "subtitle": "АББАД ИБНИ УБАДА",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "42",
      "title": "Ваби Саййидина",
      "subtitle": "АББАС ИБНИ УБАДА",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "43",
      "title": "Ваби Саййидина",
      "subtitle": "АБДУЛЛАХ ИБНИ ЖУМАЙР",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "44",
      "title": "Ваби Саййидина",
      "subtitle": "АБДУЛЛАХ ИБНИ ЖАХШ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "45",
      "title": "Ваби Саййидина",
      "subtitle": "АБДУЛЛАХ ИБНИ САЛАМ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "46",
      "title": "Ваби Саййидина",
      "subtitle": "АБДУЛЛАХ ИБНИ АМР ХАРАМ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "47",
      "title": "Ваби Саййидина",
      "subtitle": "АБДУЛЛАХ ИБНИ АМР ИБНИ ВАХВ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "48",
      "title": "Ваби Саййидина",
      "subtitle": "УБАЙД ИБНИ ТАЙЙИХАН",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "49",
      "title": "Ваби Саййидина",
      "subtitle": "УБАЙД ИБНИ АЛЬ МУАЛЛА",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "50",
      "title": "Ваби Саййидина",
      "subtitle": "УТБА ИБНИ РАБИ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "51",
      "title": "Ваби Саййидина",
      "subtitle": "УМАРО ИБНИ ЗИЙАД",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "52",
      "title": "Ваби Саййидина",
      "subtitle": "АМР ИБНИ ИЙАС",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "53",
      "title": "Ваби Саййидина",
      "subtitle": "АМР ИБНИ САБИТ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "54",
      "title": "Ваби Саййидина",
      "subtitle": "АМР ИБНИ АЛЬ ЖАМУХ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "55",
      "title": "Ваби Саййидина",
      "subtitle": "АМР ИБНИ КАЙС",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "56",
      "title": "Ваби Саййидина",
      "subtitle": "АМР ИБНИ МУТАРРИФ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "57",
      "title": "Ваби Саййидина",
      "subtitle": "АМР ИБНИ МУАЗ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "58",
      "title": "Ваби Саййидина",
      "subtitle": "АНТАРА МАВЛА ИБНИ СУЛАЙМ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "59",
      "title": "Ваби Саййидина",
      "subtitle": "КАЯ ИБНИ АМР",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "60",
      "title": "Ваби Саййидина",
      "subtitle": "КАЙС ИБНИ МУХАЛЛИД",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "61",
      "title": "Ваби Саййидина",
      "subtitle": "КАЙМАН ИБНИ АЛМАЗИНИЙЙИН",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "62",
      "title": "Ваби Саййидина",
      "subtitle": "МАЛИК ИБНИ ИЙАС",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "63",
      "title": "Ваби Саййидина",
      "subtitle": "МАЛИК ИБНИ СИНАН",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "64",
      "title": "Ваби Саййидина",
      "subtitle": "МАЛИК ИБНИ НУМАЙЛА",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "65",
      "title": "Ваби Саййидина",
      "subtitle": "МУЖАЗЗИН ИБНИ ЗИЙАД",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "66",
      "title": "Ваби Саййидина",
      "subtitle": "МУСАБ ИБНИ УМАЙР",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "67",
      "title": "Ваби Саййидина",
      "subtitle": "НУМАН ИБНИ АБДУЛЛАХ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "68",
      "title": "Ваби Саййидина",
      "subtitle": "НУМАН ИБНИ АБДУЛЛАХ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "69",
      "title": "Ваби Саййидина",
      "subtitle": "НАУФАЛ ИБНИ АБДУЛЛАХ",
      "detail": "Аль-Ансарий (р.а)",
    },
    {
      "id": "70",
      "title": "Ваби Саййидина",
      "subtitle": "ЙАЗИД ИБНИ ХАТИБ",
      "detail": "Аль-Ансарий (р.а)",
    },
  ];

  AshabuUhudPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ухуд сахабалары",
          style: GoogleFonts.nunito(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: AppDrawer(),
      body: Scrollbar(
        radius: Radius.circular(20),
        trackVisibility: true,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            final isDark = Theme.of(context).brightness == Brightness.dark;
            return Card(
              // ignore: deprecated_member_use
              shadowColor:
                  // ignore: deprecated_member_use
                  isDark ? Colors.transparent : Colors.white.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient:
                      isDark
                          ? null
                          : LinearGradient(
                            colors: [Colors.white, Colors.green.shade100],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                  color: isDark ? Colors.grey[950] : null,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 17,
                          backgroundColor:
                              isDark
                                  // ignore: deprecated_member_use
                                  ? Colors.orange.withOpacity(0.8)
                                  // ignore: deprecated_member_use
                                  : Colors.red.withOpacity(0.9),
                          child: Text(
                            item['id'] ?? '',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          item['title'] ?? '',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: isDark ? Colors.grey.shade400 : Colors.red,
                            fontFamily: 'Nunito',
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            // ignore: deprecated_member_use
                            color:
                                isDark
                                    // ignore: deprecated_member_use
                                    ? Colors.orange.withOpacity(0.1)
                                    : Colors.green.shade200,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            item['detail'] ?? '',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color:
                                  isDark
                                      ? Colors.orange.shade300
                                      : Colors.green.shade900,
                              fontFamily: 'Nunito',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Text(
                        item['subtitle'] ?? '',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
