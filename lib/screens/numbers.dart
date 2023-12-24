import 'package:flutter/material.dart';
import 'package:language_app/componants/item_componants.dart';
import 'package:language_app/models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemsModle> numbers = const [
    ItemsModle(
      imagePath: "assets/images/numbers/number_one.png",
      engWard: "One",
      japWard: "Tsu",
      soundPath: "sounds/numbers/number_one_sound.mp3",
    ),
    ItemsModle(
      imagePath: "assets/images/numbers/number_two.png",
      engWard: "two",
      japWard: "Ni",
      soundPath: "sounds/numbers/number_two_sound.mp3",
    ),
    ItemsModle(
      imagePath: "assets/images/numbers/number_three.png",
      engWard: "three",
      japWard: "Mittsu",
      soundPath: "sounds/numbers/number_three_sound.mp3",
    ),
    ItemsModle(
      imagePath: "assets/images/numbers/number_four.png",
      engWard: "four",
      japWard: "Shi",
      soundPath: "sounds/numbers/number_four_sound.mp3",
    ),
    ItemsModle(
      imagePath: "assets/images/numbers/number_five.png",
      engWard: "five",
      japWard: "Go",
      soundPath: "sounds/numbers/number_five_sound.mp3",
    ),
    ItemsModle(
      imagePath: "assets/images/numbers/number_six.png",
      engWard: "six",
      japWard: "Roku",
      soundPath: "sounds/numbers/number_six_sound.mp3",
    ),
    ItemsModle(
      imagePath: "assets/images/numbers/number_seven.png",
      engWard: "seven",
      japWard: "Sebun",
      soundPath: "sounds/numbers/number_seven_sound.mp3",
    ),
    ItemsModle(
      imagePath: "assets/images/numbers/number_eight.png",
      engWard: "eight",
      japWard: "Hachi",
      soundPath: "sounds/numbers/number_eight_sound.mp3",
    ),
    ItemsModle(
      imagePath: "assets/images/numbers/number_nine.png",
      engWard: "nine",
      japWard: "Kyū",
      soundPath: "sounds/numbers/number_nine_sound.mp3",
    ),
    ItemsModle(
      imagePath: "assets/images/numbers/number_ten.png",
      engWard: "ten",
      japWard: "Jū",
      soundPath: "sounds/numbers/number_ten_sound.mp3",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Numbers",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff4A322B),
        ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (BuildContext context, index) {
              return ItemComponants(
                item: numbers[index],
                color: const Color(0xffFA9532),
              );
            }));
  }
}
