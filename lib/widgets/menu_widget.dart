import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../screens/game_screen.dart';
import '../screens/rule_screen.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(MdiIcons.controller),
            title: const Text('Jogo'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GameScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.notes_rounded),
            title: const Text('Regras'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const RuleScreen()));
            },
          ),
        ],
      ),
    );
  }
}
