import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../pages/game_page.dart';
import '../pages/rule_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

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
