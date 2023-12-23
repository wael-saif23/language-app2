import 'package:flutter/material.dart';

class Gatagory extends StatelessWidget {
  const Gatagory(
      {super.key,
      required this.nameOfGatagory,
      required this.pageRuteName,
      required this.color});
  final String nameOfGatagory;
  final StatelessWidget pageRuteName;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return pageRuteName;
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
        width: double.infinity,
        color: color,
        child: Text(
          nameOfGatagory,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
