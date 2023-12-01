import 'package:flutter/material.dart';

class RuleItem extends StatelessWidget {
  final ImageProvider image;
  final String text;
  final String winsText;
  final String defeatText;

  const RuleItem(
      {super.key,
      required this.image,
      required this.text,
      required this.winsText,
      required this.defeatText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Ganha de: \n $winsText',
                style: const TextStyle(color: Colors.green),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Image(image: image, height: 100),
            ),
            Expanded(
              child: Text(
                'Perde de: \n $defeatText',
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.right,
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        Container(
          height: 1,
          color: const Color.fromARGB(255, 64, 67, 120),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
