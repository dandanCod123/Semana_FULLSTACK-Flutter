import 'package:flutter/material.dart';
import 'package:projeto_01/src/home/widgets/custom_drawer.dart';
import 'package:projeto_01/src/shared/widgets/user_image_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('lISTINHA'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: UserImageButton(),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(9),
            child: SegmentedButton<int>(
              segments: [
                ButtonSegment(value: 0, label: Text('Todos')),
                ButtonSegment(value: 1, label: Text('Pendentes')),
                ButtonSegment(value: 2, label: Text('Concluidas')),
                ButtonSegment(value: 3, label: Text('Desativadas')),
              ],
              selected: const {0},
              onSelectionChanged: (values) {},
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('Nova Lista'),
        onPressed: () {
          Navigator.of(context).pushNamed('/edit');
        },
      ),
    );
  }
}
