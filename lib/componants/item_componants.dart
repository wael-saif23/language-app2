import 'package:flutter/material.dart';

class ItemComponants extends StatelessWidget {
  const ItemComponants(
      {super.key,
      required this.imageName,
      required this.engWard,
      required this.japWard,
      required this.playsound});
  final String imageName;
  final String engWard;
  final String japWard;
  final Function playsound;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .1,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF4DA),
            child: Image(
              image: AssetImage(imageName),
            ),
          ),
          Column(
            children: [Text(engWard), Text(japWard)],
          ),
          IconButton(onPressed: playsound(), icon: const Icon(Icons.play_arrow))
        ],
      ),
    );
  }
}
