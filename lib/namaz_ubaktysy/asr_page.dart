import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabr/text_styles/title_theme.dart';
import 'package:sabr/widgets/app_drawer.dart';

class AsrPage extends StatelessWidget {
  const AsrPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TextItem> texts = [
      TextItem(
        'Аср намазынын парзы окулуп, салам берилгенден кийин:',
        TextStyles.largeTitle(context),
      ),
      TextItem(
        '«(Астагфируллах, 3 жолу) \n Аллохума антас-салааму ваминкас-салаам, табаарокта йаа зал-жалаали вал икром»',
        TextStyles.blackTitle(context),
        TextAlign.center,
      ),
      TextItem(
        'деп айтылат. Анан колдор көтөрүлүп, алакандар жайылып «Солаатан тунжина» дубасы окулат:',
        TextStyles.redTitle(context),
      ),
      TextItem(
        '«Аллоохумма солли ‘алаа саййидинаа Мухаммадин ва ‘алаа аали саййидинаа Мухаммад, солаатан тунжиина бихаа мин жамии’ил ахваали вал аафат. ("аафаат" деп айтып жатканда алакан төмөн, бүткөндө өйдө каратылат.) Ва тагдий ланаа бихаа жамии’ал хаажат, ва тутоххирунаа бихаа мин жамии’ис саййи’аат, ва тарфа’унаа бихаа ‘индака а’лад даражаат, ва тубаллиггунаа бихаа аксал гааяат, мин жамии’ил хайраати фил хаяати ва ба’дал мамаат, инахаллааху ‘алаа заалика, вал хамду лиллаахи Робб ‘ааламийн»',
        TextStyles.blackTitle(context),
      ),
      TextItem(
        'деп алакандар бетке сүрүлөт. Бул дубадан кийин тасбихат улантылат:',
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
        TextStyles.blackTitle(context).copyWith(
          color: Colors.green,
          shadows: [
            Shadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0.5, 1),
              blurRadius: 1,
            ),
          ],
        ),
      ),
      TextItem(
        'Намаз тасбихтери айтылат:',
        TextStyles.redTitle(context),
        TextAlign.center,
      ),
      TextItem(
        'Субхааналлоох (33 жолу)\nАльхамду лиллах (33 жолу)\nАллооху акбар (33 жолу)',
        TextStyles.blackTitle(context).copyWith(
          color: Colors.green,
          shadows: [
            Shadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0.5, 1),
              blurRadius: 1,
            ),
          ],
        ),
        TextAlign.center,
      ),
      TextItem(
        '«Лаа илааха иллаллооху вахдахуу лаа шарийка лах, лахул мульку ва лахул хамду юхйий ва йумиит, ва хува хаййун лаа ямуут, биадийхил хайр, ва хува ‘алаа кулли шай-ин кодиир, ва илайхил масиир»',
        TextStyles.blackTitle(context),
      ),
      TextItem(
        '(деп айтылып дуа кылынат)',
        TextStyles.redTitle(context),
        TextAlign.center,
      ),
      TextItem(
        'Дубадан кийинки тасбихат улантылат:',
        TextStyles.redTitle(context),
        TextAlign.center,
      ),
      TextItem(
        'Фа’лам аннаху (1 жолу)',
        TextStyles.blackTitle(context).copyWith(
          color: Colors.green,
          shadows: [
            Shadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0.5, 1),
              blurRadius: 1,
            ),
          ],
        ),
        TextAlign.center,
      ),
      TextItem(
        'Лаа илааха иллаллоох',
        TextStyles.blackTitle(context).copyWith(
          color: Colors.green,
          shadows: [
            Shadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0.5, 1),
              blurRadius: 1,
            ),
          ],
        ),
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
      TextItem(
        "~ Аллоохумма солли 'алаа саййидиина Мухаммадин ва 'алаа аали саййидиина Мухаммад, би 'адади кулли даа-ин ва даваа-ин ва баарик васаллим 'алайхи ва 'алайхим касиироо.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Аллоохумма солли 'алаа саййидиина Мухаммадин ва 'алаа аали саййидиина Мухаммад, би ‘адади кулли даа-ин ва даваа-ин ва баарик васаллим 'алайхи ва алайхим касиироо.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Аллоохумма солли 'алаа саййидиина Мухаммадин ва 'алаа аали саййидиина Мухаммад, би ‘адади кулли даа-ин ва даваа-ин ва баарик васаллим 'алайхи ва алайхим касийрон касийроо.",
        TextStyles.blackTitle(context),
      ), //
      TextItem(
        "~ Солли васаллим йаа Робби ‘алаа хабийбика Мухаммадин ва 'алаа жамии’ил анбийаа-и вал мурсалийн, ва 'алаа аали куллин ва сохби куллин ажма’иин. Аамиин, вал хамду лиллаахи Роббил 'ааламиин.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Алфу алфи солаатин ва алфу алфи салаамин ‘алайка йаа расуулллоох.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Алфу алфи солаатин ва алфу алфи салаамин ‘алайка йаа хабиибуллоох.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Алфу алфи солаатин ва алфу алфи салаамин ‘алайка йаа амина вахийллаах.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "Аллоохумма соли васаллим ва баарик,‘алаа саййидинаа Мухаммадин ва ‘алаа аалихи ва асхаабих, би ‘адади авроокил ашжаари ва амваажил бихааари ва катороотил амтоор, вагфир ланаа вархамнаа валтуф бинаа (ва би устаазина ва ваалидийнаа ва битолаабати росаа-илин нурис-соодикиин), йаа илаахаанаа би кулли солаатин минхаа шахаддах, ашхаду ан лаа илааха иллаллоох, ва ашхаду анна Мухаммадам Расуулуллоох соллаллооху та‘аала ‘алайхи ва саллам.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "Бисмиллаахир Рахмаанир Рахиим.",
        TextStyles.largeTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Аллаах та‘аалаайта йаа Рохмаан ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Рахиим та‘аалаайта йаа Кариим ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Хамиид та‘аалаайта йаа Хакиим ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Мажиид та‘аалаайта йаа Маалик ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Куддуус та‘аалаайта йаа Салаам ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Му-мин та‘аалаайта йаа Мукаймин ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа ‘Азииз та‘аалаайта йаа Жаббаар ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Мутакаббир та‘аалаайта йаа Холиик ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Аввал та‘аалаайта йаа Аахир ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Зоохир та‘аалаайта йаа Баатын ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Баари та‘аалаайта йаа Мусаввир ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Таввааб та‘аалаайта йаа Бакхааб ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Бааис та‘аалаайта йаа Ваарис ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Кодииим та‘аалаайта йаа Мукиим ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Фард та‘аалаайта йаа Витр ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Нуур та‘аалаайта йаа Саттаар ажирнаа минан наар би ‘афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Жалиил та'аалайта йаа Жамиил ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Коохир та'аалайта йаа Коодир ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Малиик та'аалайта йаа Муктадир ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа 'Алиим та'аалайта йаа 'Аллаам ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа 'Азыйм та'аалайта йаа Гофуур ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Халиим та'аалайта йаа Вадууд ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Шахиид та'аалайта йаа Шаахид ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Кабиир та'аалайта йаа Мута'аал ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Нуур та'аалайта йаа Латыйф ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Самии' та'аалайта йаа Кафиил ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Корииб та'аалайта йаа Басыйр ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Хакк та'аалайта йаа Мубиин ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Ро-ууф та'аалайта йаа Рахиим ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Тоохир та'аалайта йаа Мутоххир ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Мужаммил та'аалайта йаа Муфаддыл ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Музхир та'аалайта йаа Мун'им ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Даййаан та'аалайта йаа Султоон ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Ханнаан та'аалайта йаа Маннаан ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Ахад та'аалайта йаа Сомад ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Хайй та'аалайта йаа Каййуум ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа 'Адл та'аалайта йаа Хакам ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака йаа Фард та'аалайта йаа Куддуус ажирнаа минан наар би афвика йаа Рохмаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "~ Субхаанака аахиййан шароохиййан та'аалайта лаа илааха иллаа анта ажирнаа ва ажир устаазанаа ва ваалидайнаа ва ихваананаа ва аховаатанаа ва толабата росаа-или нуури ва руфакоо-анаа ва акрибаа-анаа ва ахбаабанал му'мининал мухлисыйна минан наар,",
        TextStyles.blackTitle(context),
      ),
      TextItem("(Алакандар төмөн каратылат)", TextStyles.redTitle(context)),
      TextItem(
        "Ва мин кулли наар, вахфазнаа мин шарри нафси ваш шайтоон ва мин шаррил-жинни вал-инсаан ва мин шаррил бид'ати вад долаалаати вал-илхаади ват-тугйаан.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "(Алакандар кайра өйдө каратылат)",
        TextStyles.redTitle(context),
      ),
      TextItem(
        "Би афвика йаа Мужиир, би фадлика йаа Гоффаар, би рахматика йаа архамар роохимиин. Аллоохумма адхилнал жанната ма'ал аброор, би шафаа'ати набиййикал мухтаар. Аамиин, вал хамду лиллаахи Роббил 'ааламиин.",
        TextStyles.blackTitle(context),
      ),
      TextItem(
        "«Набаа» сүрөсүнүн 31-40 аяттары окулат:",
        TextStyles.redTitle(context),
      ),
      TextItem(
        "Бисмиллаахир Рахмаанир Рахиим.",
        TextStyles.largeTitle(context),
      ),
      TextItem(
        "«Инна лил муттакийна мафаазан хадаа-ико ва а'наабаа, ва каваа'иба атрообаа, ва каа-сан дихаакоо. Лаа йасма'ууна фийхаа лагвав валаа киззаабаа, жазаа-ан мин Роббика 'атоо-ан хисаабаа Роббис самааваати вал арди вамаа байнахумар Рохмаани лаа йаамликууна минху хитообаа, Йаума якуумур рууху вал малаа-икату соффаа, лаа ятакалламууна иллаа ман азина лахур Рохмаану ва коола соваабаа Зааликал йаумул хакк, фаман шаа-аттахоза илаа Роббихии ма-аабаа. Иннаа анзарнаакум азаабан Кориибаа, йаума йаанзурул мар-у маа коддамат ядааху ва якуулул каафиру йаа лайтании кунту турообаа».",
        TextStyles.blackTitle(context).copyWith(
          color: Colors.green,
          shadows: [
            Shadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0.5, 1),
              blurRadius: 1,
            ),
          ],
        ),
      ),
      TextItem(
        "СодакАллоохул 'Азыйм.",
        TextStyles.redTitle(context),
        TextAlign.center,
      ),
    ];

    return Scaffold(
      // backgroundColor: const Color(0xffF2EFE7),
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Color(0xff16423C),
        title: Text(
          "Аср",
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: AppDrawer(),
      body: Scrollbar(
        radius: Radius.circular(20),
        trackVisibility: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ListView.separated(
            itemCount: texts.length,
            separatorBuilder:
                (context, index) => const SizedBox(height: 15), // Авто-отступ
            itemBuilder:
                (context, index) => Text(
                  texts[index].text,
                  style: texts[index].style, // Используйте стиль из темы
                  textAlign: texts[index].textAlign ?? TextAlign.start,
                  softWrap: true,
                ),
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
