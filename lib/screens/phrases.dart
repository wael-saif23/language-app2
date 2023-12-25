import 'package:flutter/material.dart';

import 'package:language_app/componants/phrases_componants.dart';
import 'package:language_app/models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemsModle> items = const [
    ItemsModle(
      engWard: "are_you_coming",
      japWard: "Anata wa kite imasu",
      soundPath: "sounds/phrases/are_you_coming.wav",
    ),
    ItemsModle(
      engWard: "dont_forget_to_subscribe",
      japWard: "Kōdoku o wasurenaide kudasai",
      soundPath: "sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    ItemsModle(
      engWard: "how_are_you_feeling",
      japWard: "Go kibun wa ikagadesu ka",
      soundPath: "sounds/phrases/how_are_you_feeling.wav",
    ),
    ItemsModle(
      engWard: "i_love_anime",
      japWard: "Watashi wa anime ga daisukidesu",
      soundPath: "sounds/phrases/i_love_anime.wav",
    ),
    ItemsModle(
      engWard: "i_love_programming",
      japWard: "Puroguramingu ga daisuki",
      soundPath: "sounds/phrases/i_love_programming.wav",
    ),
    ItemsModle(
      engWard: "programming_is_easy",
      japWard: "Puroguramingu wa kantandesu",
      soundPath: "sounds/phrases/programming_is_easy.wav",
    ),
    ItemsModle(
      engWard: "what_is_your_name",
      japWard: "Anata no namae wa nandesuka",
      soundPath: "sounds/phrases/what_is_your_name.wav",
    ),
    ItemsModle(
      engWard: "where_are_you_going",
      japWard: "Doko ni iku no",
      soundPath: "sounds/phrases/where_are_you_going.wav",
    ),
    ItemsModle(
      engWard: "yes_im_coming",
      japWard: "Hai, kimasu",
      soundPath: "sounds/phrases/yes_im_coming.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Phrases",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff4A322B),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, index) {
              return PhrasesComponants(
                item: items[index],
                color: const Color(0xff48A5CC),
              );
            }));
  }
}
