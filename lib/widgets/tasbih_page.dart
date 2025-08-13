import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabr/text_styles/title_theme.dart';
import 'package:sabr/widgets/app_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibration/vibration.dart';

class TasbihPage extends StatefulWidget {
  const TasbihPage({super.key});

  @override
  TasbihPageState createState() => TasbihPageState();
}

class TasbihPageState extends State<TasbihPage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  Future<void> _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = prefs.getInt('counter') ?? 0;
    });
  }

  Future<void> _incrementCounter() async {
    setState(() {
      _counter++;
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', _counter);
  }

  Future<void> _resetCounter() async {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final alertColor = isDark ? Colors.grey[900] : const Color(0xff16423C);
    bool? confirmReset = await showDialog(
      // barrierColor: Colors.red,
      barrierDismissible: true,
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: alertColor,
            title: Text(
              'Эсептегич баштапкы абалга келтирилсинби?',
              style: GoogleFonts.nunito(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
            content: Text(
              'Чын эле эсептегичти баштапкы абалга келтиргиңиз келеби?',
              style: GoogleFonts.nunito(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
            actions: [
              InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () => Navigator.of(context).pop(false),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Жок',
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () => Navigator.of(context).pop(true),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Ооба',
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
    );

    if (confirmReset == true) {
      setState(() {
        _counter = 0;
      });
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('counter', _counter);

      // Проверяем поддержку вибрации и вызываем ее
      if (await Vibration.hasVibrator()) {
        Vibration.vibrate(duration: 500);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // final isDark = Theme.of(context).brightness == Brightness.dark;
    // final containerColor = isDark ? Colors.grey[900] : const Color(0xff16423C);
    // final textColor = isDark ? Colors.black : Colors.white; // <--- добавьте это

    return Scaffold(
      backgroundColor: Color(0xff212121),
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: const Color(0xff16423C),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'Тасбих',
          style: GoogleFonts.nunito(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Column(
              children: [
                Container(
                  width: 320,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff212121),

                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      '(Чоң баскычты басканда, эсепке бирөө кошулат)',
                      style: TextStyless.blackTitle.copyWith(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 17),
                Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff212121),
                    // gradient: LinearGradient(
                    //   colors: [Colors.grey, Color(0xff16423C)],
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.topRight,
                    // ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      '(Кичинекей баскычты басканда, эсептегич баштапкы абалга келтирилет)',
                      style: TextStyless.salavatTitle.copyWith(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomPaint(
                  size: const Size(350, 450),
                  painter: TasbihPainter(),
                ),
                Positioned(
                  top: 70,
                  child: Container(
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        _counter.toString().padLeft(3, '0'),
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Digital',
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 100,
                  child: Material(
                    color: Colors.transparent, // чтобы не было лишнего цвета
                    shape: const CircleBorder(),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(45),
                      // ignore: deprecated_member_use
                      splashColor: Colors.grey.withOpacity(0.2),
                      onTap: () async {
                        await _incrementCounter();
                        if (await Vibration.hasVibrator()) {
                          Vibration.vibrate(duration: 40); // короткая вибрация
                        }
                      },
                      child: Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 190,
                  right: 50,
                  child: Material(
                    color: Colors.transparent,
                    shape: const CircleBorder(),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25),
                      // ignore: deprecated_member_use
                      splashColor: Colors.grey.withOpacity(0.2),
                      onTap: () async {
                        await _resetCounter();
                        if (await Vibration.hasVibrator()) {
                          Vibration.vibrate(duration: 40); // короткая вибрация
                        }
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TasbihPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Градиентная заливка
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    Gradient gradient = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xff313131), Colors.black],
    );

    Paint paint =
        Paint()
          ..shader = gradient.createShader(rect)
          ..style = PaintingStyle.fill;

    // Форма тасбиха
    Path path =
        Path()
          ..moveTo(size.width * 0.2, 0)
          ..quadraticBezierTo(size.width * 0.5, -60, size.width * 0.8, 0)
          ..lineTo(size.width, size.height * 0.6)
          ..quadraticBezierTo(
            size.width * 0.5,
            size.height + 40,
            0,
            size.height * 0.6,
          )
          ..close();

    canvas.drawPath(path, paint);

    // Граница (белая обводка)
    Paint borderPaint =
        Paint()
          ..color = Colors.white
          ..strokeWidth = 7
          ..style = PaintingStyle.stroke;

    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
