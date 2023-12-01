import 'package:flutter/material.dart';

class RuleScreen extends StatefulWidget {
  const RuleScreen({super.key});

  @override
  State<RuleScreen> createState() => _RuleScreenState();
}

class _RuleScreenState extends State<RuleScreen> {
  var stoneImage = const AssetImage('assets/pedra.png');
  var paperImage = const AssetImage('assets/papel.png');
  var scissorsImage = const AssetImage('assets/tesoura.png');
  var lizardImage = const AssetImage('assets/lagarto.png');
  var spockImage = const AssetImage('assets/spock.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 64, 67, 120),
        title: Text('Regras'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Column(
            children: [
              RuleItem(
                image: lizardImage,
                text: 'Lagarto',
                winsText: 'Papel \n Spock',
                defeatText: 'Pedra\n Tesoura',
              ),
              RuleItem(
                image: paperImage,
                text: 'Papel',
                winsText: 'Pedra \n Spock',
                defeatText: 'Tesoura \n Lagarto',
              ),
              RuleItem(
                image: stoneImage,
                text: 'Pedra',
                winsText: 'Lagarto \n Tesoura',
                defeatText: 'Papel \n Spock',
              ),
              RuleItem(
                image: spockImage,
                text: 'Spock',
                winsText: 'Pedra \n Tesoura',
                defeatText: 'Papel \n Lagarto',
              ),
              RuleItem(
                image: scissorsImage,
                text: 'Tesoura',
                winsText: 'Papel \n Lagarto',
                defeatText: 'Pedra \n Spock',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RuleItem extends StatelessWidget {
  final ImageProvider image;
  final String text;
  final String winsText;
  final String defeatText;

  const RuleItem(
      {required this.image,
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
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Ganha de: \n $winsText',
                style: TextStyle(color: Colors.green),
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
                style: TextStyle(color: Colors.red),
                textAlign: TextAlign.right,
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Container(
          height: 1,
          color: Color.fromARGB(255, 64, 67, 120),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
