import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('10 Things to Do in Difficulty'),
          centerTitle: true,
        ),
        body: DifficultyList(),
      ),
    );
  }
}

class DifficultyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine the width to adjust for responsive design
        bool isMobile = constraints.maxWidth < 600;
        double padding = isMobile ? 10.0 : 40.0;

        return SingleChildScrollView(
          padding: EdgeInsets.all(padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitle('1: Read Quran Daily'),
              buildDescription('Even one verse.'),
              SizedBox(height: 16),

              buildTitle('2: Offer Tahajjud and ask Allah for the solution.'),
              buildDescription('(Be humble) There are 3 types of Tahajjud'),
              buildBulletPoints([
                'a: Offer Tahajjud prayer before sleeping. (Good)',
                'b: Waking a few minutes before Fajr and offering Tahajjud. (Better)',
                'c: Waking at midnight offering Tahajjud and then going to sleep until Fajr. (Best)',
              ]),
              SizedBox(height: 16),

              buildTitle('3: Make Dua in the times of acceptance'),
              buildDescription(
                  'E.g. During Rain, While traveling, during Sujood, on Jummah after Asar & between Azaan and Iqamah.'),
              SizedBox(height: 16),

              buildTitle('4: Make dua for others who are suffering from the same problems.'),
              SizedBox(height: 16),

              buildTitle('5: Make sure not to leave morning and evening azkaar.'),
              buildDescription('(Hisnul Muslim app)'),
              SizedBox(height: 16),

              buildTitle('6: Try your best to leave sins.'),
              SizedBox(height: 16),

              buildTitle('7: Help the poor and needy.'),
              buildDescription('(With consistency)'),
              SizedBox(height: 16),

              buildTitle('8: Make lots of Istaghfaar.'),
              SizedBox(height: 16),

              buildTitle('9: Make authentic dua\'s in a state of extreme depression or grief.'),
              SizedBox(height: 16),

              buildTitle('10: Read this dua often'),
              buildArabicDua(),
              buildTranslation(),
              SizedBox(height: 16),

              buildSourceReference('Al-Bukhari 6345 and Muslim 2730'),
            ],
          ),
        );
      },
    );
  }

  Widget buildTitle(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildDescription(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
      ),
    );
  }

  Widget buildBulletPoints(List<String> points) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: points.map((point) => Text('• $point')).toList(),
    );
  }

  Widget buildArabicDua() {
    return Text(
      'لَا إِلَهَ إِلَّا اللَّهُ الْعَظِيمُ الْحَلِيمُ، لَا إِلَهَ إِلَّا اللَّهُ رَبُّ الْعَرْشِ الْعَظِيمِ، '
          'لَا إِلَهَ إِلَّا اللَّهُ رَبُّ السَّمَوَاتِ، وَرَبُّ الْأَرْضِ، وَرَبُّ الْعَرْشِ الْكَرِيمِ',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      textDirection: TextDirection.rtl,
    );
  }

  Widget buildTranslation() {
    return Text(
      'La ilaha illallahul-Adheemul-Haleem. La ilaha illallahu Rabbul-‘Arshil-‘Adheem. '
          'La ilaha illallahu Rabbus-samawati, wa Rabbul-ardi, wa Rabbul-‘Arshil-Kareem.',
      style: TextStyle(
        fontSize: 16,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Widget buildSourceReference(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
