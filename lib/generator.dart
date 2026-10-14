import 'package:flutter/material.dart';

class GeneratorQuotes extends StatefulWidget {
  const GeneratorQuotes({super.key});

  @override
  State<GeneratorQuotes> createState() {
    return _GeneratorQuotesState();
  }
}

class _GeneratorQuotesState extends State<GeneratorQuotes> {
  final List<String> images = [
    'assets/images/image copy.png',
    'assets/images/image copy 2.png',
    'assets/images/image copy 3.png',
  ];

  final List<String> quotes = [
    "На вопрос: 'Сколько будет 60 плюс 7?', я всегда гордо отвечаю: '67. Потому что это классика'.",
     "Почему именно 67? Да потому что 66 — это мало, а 68 — это уже перебор.",
    "Если тебе где-то не рады в рваных носках, то и в целых туда идти не стоит.",
    "Живи, кайфуй, гуляй, играй, делай упор лежа. Главное — не будь овощем.",
    "Лучше быть последним в списке миллиардеров, чем первым в списке лучших.",
    "Если ты упал, встань. Если ты снова упал, полежи, отдохни.",
    "Запомни: всего одна ошибка — и ты ошибся.",
    "Посплю после еды.",
    "Мой характер зависит от меня, а мое отношение — от вашего поведения.",
    "Если собираешься сделать круто, делай молча.",
    "Лучше прийти на полчаса раньше, чем опоздать.",
    "Если вокруг тебя одни волки — возможно, ты просто обед.",
    "Слабые скажут: 'Не судьба', а я скажу: 'Пойду поем'.",
    "Важно то, кто заставил тебя снова улыбнуться.",
    "Мудрость приходит с годами, но иногда годы приходят одни."
  ];

  int index = 0;
  int imgIndex = 0;

  void rollQuote() {
    setState(() {
      index = index + 1;
      if (index >= quotes.length) {
        index = 0;
      }

      imgIndex = imgIndex + 1;
      if (imgIndex >= images.length) {
        imgIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Row(
              children: [
                Image.asset('assets/images/image.png', width: 80, height: 80),
                const SizedBox(width: 10),
                const Text(
                  'Цитат',
                  style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(images[imgIndex], width: 250, height: 250),
                const SizedBox(height: 20),
                Text(
                  quotes[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: rollQuote,
                  child: const Text('Сгенерировать'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
