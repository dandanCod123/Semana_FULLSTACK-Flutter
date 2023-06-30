import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    //NAVEGAÇÃO ATRAVEZ DE ROTAS
    return NavigationDrawer(
        onDestinationSelected: (index) {
          if (index == 1) {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/config');
          }
        },
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 28, 16, 16),
            child: Text(
              'Opções',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.sync),
            label: Row(
              children: [
                Text('Sincronizar'),
                SizedBox(
                  width: 15,
                ),
                Text(
                  '12/12/2012',
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.settings),
            label: Text('Configurações'),
          )
        ]);
  }
}
