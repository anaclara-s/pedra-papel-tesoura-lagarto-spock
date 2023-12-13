import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/rule_widget.dart';

class RuleScreen extends StatefulWidget {
  const RuleScreen({super.key});

  @override
  State<RuleScreen> createState() => _RuleScreenState();
}

class _RuleScreenState extends State<RuleScreen> {
  var stoneImage = const AssetImage('assets/images/game/pedra.png');
  var paperImage = const AssetImage('assets/images/game/papel.png');
  var scissorsImage = const AssetImage('assets/images/game/tesoura.png');
  var lizardImage = const AssetImage('assets/images/game/lagarto.png');
  var spockImage = const AssetImage('assets/images/game/spock.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: 'Regras',
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
