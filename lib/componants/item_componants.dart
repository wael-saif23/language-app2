import 'package:flutter/material.dart';
import 'package:language_app/componants/item_image.dart';
import 'package:language_app/componants/text_sound_item.dart';
import 'package:language_app/models/item_model.dart';

class ItemComponants extends StatelessWidget {
  const ItemComponants({
    super.key,
    required this.item,
    required this.color,
  });
  final ItemsModle item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: const Color(0xff4A322B),
          ),
        ),
        height: MediaQuery.of(context).size.height * .1,
        width: double.infinity,
        child: Row(
          children: [
            ItemImage(
              item: item,
            ),
            const VerticalDivider(
                color: Color(0xff4A322B), thickness: 1, width: 1),
            TextAndSoundItem(
              item: item,
              color: color,
            ),
          ],
        ),
      ),
    );
  }
}
