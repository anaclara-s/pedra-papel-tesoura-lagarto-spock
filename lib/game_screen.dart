import 'dart:math';

import 'package:flutter/material.dart';

import 'menu_widget.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  var options = ['pedra', 'papel', 'tesoura', 'lagarto', 'spock'];
  var menssage = '';

  var userChoiceImage = const AssetImage('assets/fundo.png');
  var computerChoiceImage = const AssetImage('assets/fundo.png');
  var stoneImage = const AssetImage('assets/pedra.png');
  var paperImage = const AssetImage('assets/papel.png');
  var scissorsImage = const AssetImage('assets/tesoura.png');
  var lizardImage = const AssetImage('assets/lagarto.png');
  var spockImage = const AssetImage('assets/spock.png');

  void move(String choice) {
    int random = Random().nextInt(4);
    String randoms = options[random];

    userChoiceImage = AssetImage('assets/$choice.png');
    computerChoiceImage = AssetImage('assets/$randoms.png');

    print('Click:$choice, Random:$randoms');

    if ((choice == 'pedra' && randoms == 'papel') ||
        (choice == 'pedra' && randoms == 'spock') ||
        (choice == 'papel' && randoms == 'tesoura') ||
        (choice == 'papel' && randoms == 'lagarto') ||
        (choice == 'tesoura' && randoms == 'spock') ||
        (choice == 'tesoura' && randoms == 'pedra') ||
        (choice == 'lagarto' && randoms == 'pedra') ||
        (choice == 'lagarto' && randoms == 'tesoura') ||
        (choice == 'spock' && randoms == 'lagarto') ||
        (choice == 'spock' && randoms == 'papel')) {
      setState(() {
        menssage = 'Derrota';
      });
    } else if ((choice == 'pedra' && randoms == 'tesoura') ||
        (choice == 'pedra' && randoms == 'lagarto') ||
        (choice == 'papel' && randoms == 'spock') ||
        (choice == 'papel' && randoms == 'pedra') ||
        (choice == 'tesoura' && randoms == 'papel') ||
        (choice == 'tesoura' && randoms == 'lagarto') ||
        (choice == 'lagarto' && randoms == 'spock') ||
        (choice == 'lagarto' && randoms == 'papel') ||
        (choice == 'spock' && randoms == 'tesoura') ||
        (choice == 'spock' && randoms == 'pedra')) {
      setState(() {
        menssage = 'Vitória';
      });
    } else {
      setState(() {
        menssage = 'Empate';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 243),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 64, 67, 120),
      ),
      drawer: const MenuWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Text(
                        'Computador:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Image(image: computerChoiceImage, height: 150),
                  ],
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Text(
                        'Jogador:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Image(image: userChoiceImage, height: 150),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50, bottom: 15),
              child: Text(
                'Escolhas:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => move('pedra'),
                  child: Image(image: stoneImage, height: 100),
                ),
                GestureDetector(
                  onTap: () => move('papel'),
                  child: Image(image: paperImage, height: 100),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () => move('tesoura'),
                  child: Image(image: scissorsImage, height: 100),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => move('lagarto'),
                  child: Image(image: lizardImage, height: 100),
                ),
                GestureDetector(
                  onTap: () => move('spock'),
                  child: Image(image: spockImage, height: 100),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: menssage == 'Vitória'
                        ? const Color.fromARGB(255, 62, 124, 64)
                        : menssage == 'Empate'
                            ? const Color.fromARGB(255, 248, 219, 90)
                            : menssage == 'Derrota'
                                ? const Color.fromARGB(255, 190, 61, 52)
                                : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      menssage,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
