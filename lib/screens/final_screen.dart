import 'package:flutter/material.dart';

class FinalScreen extends StatefulWidget {
  final int victory;
  final int tie;
  final int defeat;
  const FinalScreen(
      {super.key,
      required this.victory,
      required this.tie,
      required this.defeat});

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Fim de jogo')),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Vitórias: ${widget.victory}',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            Text(
              'Empates: ${widget.tie}',
              style: TextStyle(fontSize: 20, color: Colors.yellow),
            ),
            Text(
              'Derrotas: ${widget.defeat}',
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
