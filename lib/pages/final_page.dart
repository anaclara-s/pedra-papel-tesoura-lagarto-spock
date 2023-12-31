import 'dart:io';

import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_elevatedbutton.dart';
import '../widgets/custom_text.dart';
import 'game_page.dart';
import 'home_page.dart';

class FinalScreen extends StatefulWidget {
  final int victory;
  final int tie;
  final int defeat;
  final int score;
  const FinalScreen(
      {super.key,
      required this.victory,
      required this.tie,
      required this.defeat,
      required this.score});

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        automaticallyImplyLeading: false,
        text: 'Jogo encerrado',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    text: 'Pontuação final:',
                  ),
                ),
                Center(
                  child: CustomText(
                    text: '${widget.score} pontos',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                text: 'Detalhes da sua pontuação',
              ),
              const SizedBox(height: 10),
              buildScoreDetail(
                'Vitórias',
                widget.victory,
                const Color.fromARGB(255, 62, 124, 64),
              ),
              buildScoreDetail(
                'Empates',
                widget.tie.abs(),
                const Color.fromARGB(255, 248, 219, 90),
              ),
              buildScoreDetail(
                'Derrotas',
                widget.defeat,
                const Color.fromARGB(255, 190, 61, 52),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const CustomText(
                    text: 'O que dejesa agora?',
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomElevatedButton(
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        backgroundColor: const Color.fromARGB(255, 1, 63, 115),
                        text: 'Ir para tela inicial',
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
                        text: 'Jogar novamente',
                      ),
                    ],
                  ),
                  CustomElevatedButton(
                    onPressed: () {
                      exit(0);
                    },
                    backgroundColor: const Color.fromARGB(255, 121, 121, 121),
                    text: 'Fechar o aplicativo',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
