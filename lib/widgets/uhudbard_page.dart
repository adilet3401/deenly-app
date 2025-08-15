import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabr/text_styles/title_theme.dart';
import 'package:sabr/widgets/app_drawer.dart';

class UhudBadrPage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      "id": "1",
      "title": "Саййидина",
      "subtitle": "АБУ БАКИР АС СЫДДЫК",
      "detail": "Аль Мухажир (р.а)",
    },
    {
      "id": "2",
      "title": "Саййидина",
      "subtitle": "УМАР БИН ХАТТАБ",
      "detail": "Аль Мухажир (р.а)",
    },
    {
      "id": "3",
      "title": "Саййидина",
      "subtitle": "УСМАН БИН АФФАН",
      "detail": "Аль Мухажир (р.а)",
    },
    {
      "id": "4",
      "title": "Саййидина",
      "subtitle": "АЛИ БИН АБУ ТОЛИБ",
      "detail": "Аль Мухажир (р.а)",
    },
    {
      "id": "5",
      "title": "Саййидина",
      "subtitle": "ТАЛХА БИН УБАЙДУЛЛАХ",
      "detail": "Аль Мухажир (р.а)",
    },
    {
      "id": "6",
      "title": "Саййидина",
      "subtitle": "ЗУБАЙР БИН АВВАМ",
      "detail": "Аль Мухажир (р.а)",
    },
    {
      "id": "7",
      "title": "Саййидина",
      "subtitle": "АБДУРАХМАН БИН АУФ",
      "detail": "Аль Мухажир (р.а)",
    },
    {
      "id": "8",
      "title": "Саййидина",
      "subtitle": "СААД БИН АБУ БАКАС",
      "detail": "Аль Мухажир (р.а)",
    },
    {
      "id": "9",
      "title": "Саййидина",
      "subtitle": "САЙД БИН ЗАЙД",
      "detail": "Аль Мухажир (р.а)",
    },
    {
      "id": "10",
      "title": "Саййидина",
      "subtitle": "АБУ УБАЙДА БИН ЖАРРАХ",
      "detail": "Аль Мухажир (р.а)",
    },
    {
      "id": "11",
      "title": "Саййидина",
      "subtitle": "УБАЙ БИН КАБ",
      "detail": "Аль Мухажир (р.а)",
    },
    {
      "id": "12",
      "title": "Саййидина",
      "subtitle": "АЛЬ-АРКАМ БИН АБУЛ-АРКАМ",
      "detail": "Аль Хазражи (р.а)",
    },
    {
      "id": "13",
      "title": "Саййидина",
      "subtitle": "АСАД БИН ЯЗИД",
      "detail": "Аль Мухажир (р.а)",
    },
    {
      "id": "14",
      "title": "Саййидина",
      "subtitle": "АНАС БИН МУАЗ",
      "detail": "Аль Хазражи (р.а)",
    },
    {
      "id": "15",
      "title": "Саййидина",
      "subtitle": "АНАСАТА МАВЛА РАСУЛЛАХ (С.А.В)",
      "detail": "Аль Хазражи (р.а)",
    },
    {
      "id": "16",
      "title": "Саййидина",
      "subtitle": "УНАЙС БИН КАТАДЕ",
      "detail": "Аль Мухажир (р.а)",
    },
    {
      "id": "17",
      "title": "Саййидина",
      "subtitle": "АВС БИН САБИТ",
      "detail": "Аль -Авс (р.а)",
    },
    {
      "id": "18",
      "title": "Саййидина",
      "subtitle": "АВС БИН ХАБИБ",
      "detail": "Аль Хазражи (р.а)",
    },
    {
      "id": "19",
      "title": "Саййидина",
      "subtitle": "АВС БИН САМИТ",
      "detail": "Аль Хазражи (р.а)",
    },
    {
      "id": "20",
      "title": "Саййидина",
      "subtitle": "ЙЯС БИН БУКАЙР",
      "detail": "Аль Хазражи (р.а)",
    },
    {
      "id": "21",
      "title": "Саййидина",
      "subtitle": "БУЖАЙР БИН АБУ БУЖАЙР",
      "detail": "Аль Мухажир (р.а)",
    },
    {
      "id": "22",
      "title": "Саййидина",
      "subtitle": "БАХХАС БИН САЛАБА",
      "detail": "Аль Хазражи (р.а)",
    },
    {
      "id": "23",
      "title": "Саййидина",
      "subtitle": "БАСВАС БИН АМР",
      "detail": "Аль Хазражи (р.а)",
    },
    {
      "id": "24",
      "title": "Саййидина",
      "subtitle": "БИИР БИН БАРА",
      "detail": "Аль Хазражи (р.а)",
    },
    {
      "id": "25",
      "title": "Саййидина",
      "subtitle": "БИИР БИН САД",
      "detail": "Аль Хазражи (р.а)",
    },
    {
      "id": "26",
      "title": "Саййидина",
      "subtitle": "БИЛАЛ БИН АБУ РАБАХ",
      "detail": "Аль Хазражи (р.а)",
    },
    {
      "id": "27",
      "title": "Саййидина",
      "subtitle": "ТАМИМ МАВЛА ХИРШ",
      "detail": "Аль -Авс (р.а)",
    },
    {
      "id": "28",
      "title": "Саййидина",
      "subtitle": "ТАМИМ МАВЛА БАНИ ТАМИМ",
      "detail": "Аль Хазражи (р.а)",
    },
    {
      "id": "29",
      "title": "Саййидина",
      "subtitle": "ТАМИМ БИН ЯЕАР",
      "detail": "Аль Хазражи (р.а)",
    },
    {
      "id": "30",
      "title": "Саййидина",
      "subtitle": "САБИТ БИН АРКАМ",
      "detail": "Аль Хазражи (р.а)",
    },
  ];
  UhudBadrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ухуд - Бадр",
          style: GoogleFonts.nunito(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            // color: Theme.of(context).cardColor,
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Text(
                item['id'] ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                  fontSize: 15,
                ),
              ),
              title: Text(
                item['title'] ?? '',
                style: TextStyles.largeTitle(context).copyWith(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              subtitle: Text(
                item['subtitle'] ?? '',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                item['detail'] ?? '',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
