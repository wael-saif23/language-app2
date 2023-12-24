import 'package:flutter/material.dart';
import 'package:language_app/models/item_model.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({super.key, required this.item});
  final ItemsModle item;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: item.imagePath != null
          ? Image(
              image: AssetImage(item.imagePath!),
            )
          : const SizedBox(),
    );
  }
}
