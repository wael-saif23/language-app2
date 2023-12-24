import 'package:flutter/material.dart';

import 'package:language_app/models/item_model.dart';

class TextAndSoundItem extends StatelessWidget {
  const TextAndSoundItem({
    super.key,
    required this.item,
    required this.color,
  });
  final ItemsModle item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          color: color,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.engWard,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      item.japWard,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: CircleAvatar(
                  backgroundColor: const Color(0xff4A322B),
                  radius: 20,
                  child: IconButton(
                      onPressed: () {
                        item.playoudio();
                      },
                      color: Colors.white,
                      icon: const Icon(Icons.play_arrow)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
