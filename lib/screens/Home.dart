import 'package:flutter/material.dart';
import 'package:language_app/componants/gatagory.dart';
import 'package:language_app/screens/numbers.dart';
import 'package:language_app/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4DA),
      appBar: AppBar(
        title: const Text("Language App"),
        backgroundColor: const Color(0xff4A322B),
      ),
      body: const Column(
        children: [
          Gatagory(
            nameOfGatagory: 'Members',
            pageRuteName: NumbersPage(),
            color: Color(0xffFA9532),
          ),
          Gatagory(
            nameOfGatagory: 'Phrases',
            pageRuteName: PhrasesPage(),
            color: Color(0xff48A5CC),
          ),
        ],
      ),
    );
  }
}
