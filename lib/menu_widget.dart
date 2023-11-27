import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'game_screen.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text('Pedra, papel, tesoura, lagarto e spock')),
          ListTile(
            leading: Icon(MdiIcons.controller),
            title: Text('Jogo'),
            onTap: () {
              MaterialPageRoute(builder: (context) => GameScreen());
            },
          ),
          ListTile(
            leading: Icon(Icons.notes_rounded),
            title: Text('Regras'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(MdiIcons.backburger),
            title: Text('Tela inicial'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
