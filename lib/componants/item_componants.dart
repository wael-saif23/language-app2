import 'package:flutter/material.dart';
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
        height: MediaQuery.of(context).size.height * .1,
        width: double.infinity,
        color: color,
        child: Row(
          children: [
            Container(
              color: Colors.white,
              child: Image(
                image: AssetImage(item.imagePath!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(item.engWard), Text(item.japWard)],
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  item.playoudio();
                },
                color: Colors.white,
                icon: const Icon(Icons.play_arrow))
          ],
        ),
      ),
    );
  }
}
