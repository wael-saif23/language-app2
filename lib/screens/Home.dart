import 'package:flutter/material.dart';
import 'package:language_app/componants/gatagory.dart';
import 'package:language_app/screens/numbers.dart';

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
      body: const Gatagory(
        nameOfGatagory: 'Members',
        pageRuteName: NumbersPage(),
        color: Color(0xffFA9532),
      ),
    );
  }
}
