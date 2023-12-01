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
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: 'Ganha de: \n',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    TextSpan(
                      text: winsText,
                      style: const TextStyle(color: Colors.green, fontSize: 18),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Image(image: image, height: 100),
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: 'Perde de: \n',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    TextSpan(
                      text: defeatText,
                      style: const TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
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
