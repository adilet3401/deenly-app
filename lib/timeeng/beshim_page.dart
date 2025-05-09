import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabr/text_styles/title_colors.dart';
import 'package:sabr/widgets/app_drawer.dart';

class BeshimPage extends StatelessWidget {
  const BeshimPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TextItem> texts = [
      TextItem(
        'Бешим намазынын парзы окулуп, салам берилгенден кийин:',
        TextStyles.largeTitle(context), // Передаём context
      ),
      TextItem(
        '«(Астагфируллах, 3 жолу) \n Аллохума антас-салааму ваминкас-салаам, табаарокта йаа зал-жалаали вал икром»',
        TextStyles.blackTitle(context), // Передаём context
        TextAlign.center,
      ),
      TextItem(
        'деп айтылат. Анан колдор көтөрүлүп, алакандар жайылып «Солаатан тунжина» дубасы окулат:',
        TextStyles.redTitle(context), // Передаём context
      ),
      TextItem(
        '«Аллоохумма солли ‘алаа саййидинаа Мухаммадин ва ‘алаа аали саййидинаа Мухаммад, солаатан тунжиина бихаа мин жамии’ил ахваали вал аафат. ("аафаат" деп айтып жатканда алакан төмөн, бүткөндө өйдө каратылат.) Ва тагдий ланаа бихаа жамии’ал хаажат, ва тутоххирунаа бихаа мин жамии’ис саййи’аат, ва тарфа’унаа бихаа ‘индака а’лад даражаат, ва тубаллиггунаа бихаа аксал гааяат, мин жамии’ил хайраати фил хаяати ва ба’дал мамаат, инахаллааху ‘алаа заалика, вал хамду лиллаахи Робб ‘ааламийн»',
        TextStyles.blackTitle(context), // Передаём context
      ),
      TextItem('деп алакандар бетке сүрүлөт.', TextStyles.redTitle(context)),
      TextItem(
        "Бешимдин акыркы сүннөтү окулгандан кийин:",
        TextStyles.redTitle(context),
      ),
      TextItem(
        "«Субхааналлоохи вал хамду лиллаахи ва лаа илааха иллаллооху валлооху акбар, ва лаа хавла ва лаа куввата иллаа биллаахил 'алиййил 'азыйм ",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        'деп айтылат жана «Аятал Курси» окулат.',
        TextStyles.redTitle(context),
      ),
      TextItem(
        'Бисмиллаахир Рахмаанир Рахиим.',
        TextStyles.largeTitle(context),
      ),
      TextItem(
        "«Аллооху лаа илааха иллаа хувал хаййул каййуум, лаа та-хузухуу синатун валаа наум, лаху маа фиссамааваати вамаа фил ард, ман заллазий йашфа'у 'индахуу иллаа би-изних, йа'ламу маа байна айдийхим вамаа холфахум валаа йухийтууна би шай-ин мин 'илмихии иллаа бимаа шаа-а, васи'а курсиййухус самааваати вал арди, валаа йа-уудухуу хифзухумаа ва хувал 'алиййул 'азыйм».'",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        'Намаз тасбихтери айтылат:',
        TextStyles.redTitle(context),
        TextAlign.center,
      ),
      TextItem(
        'Субхааналлоох (33 жолу)\nАльхамду лиллах (33 жолу)\nАллооху акбар (33 жолу)',
        TextStyles.blackTitle(context),
        TextAlign.center,
      ),
      TextItem(
        '«Лаа илааха иллаллооху вахдахуу лаа шарийка лах, лахул мульку ва лахул хамду юхйий ва йумиит, ва хува хаййун лаа ямуут, биадийхил хайр, ва хува ‘алаа кулли шай-ин кодиир, ва илайхил масиир»',
        TextStyles.blackTitle(context),
      ),
      TextItem('(деп айтылып дуа кылынат)', TextStyles.redTitle(context)),
      TextItem(
        'Дубадан кийинки тасбихат улантылат:',
        TextStyles.redTitle(context),
      ),
      TextItem(
        'Фа’лам аннаху (1 жолу)',
        TextStyles.blackTitle(context),
        TextAlign.center,
      ),
      TextItem(
        'Лаа илааха иллаллоох',
        TextStyles.blackTitle(context),
        TextAlign.center,
      ),
      TextItem(
        '(33 жолу окулат)',
        TextStyles.redTitle(context),
        TextAlign.center,
      ),
      TextItem(
        '«Мухаммадун Расуулуллоохи соллаллооху та’аалаа ‘алайхи ва саллам»',
        TextStyles.blackTitle(context),
      ),
      TextItem('Андан соң:', TextStyles.redTitle(context), TextAlign.center),
      TextItem(
        'Тасбихаттан кийин салават-саламдар окулат:',
        TextStyles.redTitle(context),
      ),
      TextItem(
        'Бисмиллаахир Рохмаанир Рахиим.',
        TextStyles.largeTitle(context),
      ),
      TextItem(
        "~ Инналлооха ва малаа-икатаху йусоллууна 'алан набий, йаа айюхаллазийна аамануус соллу'алайхи васаллимуу таслиймаа, лаббайк!.",
        TextStyles.blackTitle(context),
      ),
      // Остальные элементы списка...
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Бешим",
          style: GoogleFonts.nunito(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.separated(
          itemCount: texts.length,
          separatorBuilder: (context, index) => const SizedBox(height: 15),
          itemBuilder:
              (context, index) => Text(
                texts[index].text,
                style: texts[index].style,
                textAlign: texts[index].textAlign ?? TextAlign.start,
                softWrap: true,
              ),
        ),
      ),
    );
  }
}

// Модель для текстов
class TextItem {
  final String text;
  final TextStyle style;
  final TextAlign? textAlign;
  TextItem(this.text, this.style, [this.textAlign]);
}
