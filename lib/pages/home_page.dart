import 'package:flutter/material.dart';

import '../widgets/custom_elevatedbutton.dart';
import '../widgets/custom_text.dart';
import 'game_page.dart';
import 'rule_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 63, 115),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 20),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/logoB.png'),
                fit: BoxFit.contain,
                alignment: Alignment.center),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Boas vindas ao jogo',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Pedra, Papel, Tesoura, Lagarto e Spock',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                        text: 'Já sabe como joga? \n Então:',
                        textAlign: TextAlign.center,
                        color: Colors.white,
                      ),
                      CustomElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GameScreen(),
                            ),
                          );
                        },
                        backgroundColor:
                            const Color.fromARGB(255, 104, 139, 46),
                        text: 'Iniciar jogo',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                        text: 'Primeira vez? \n De uma olhada nas:',
                        textAlign: TextAlign.center,
                        color: Colors.white,
                      ),
                      CustomElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RuleScreen(),
                            ),
                          );
                        },
                        backgroundColor:
                            const Color.fromARGB(255, 240, 136, 47),
                        text: 'Regras',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
