import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Final Fantasy',
    'League of legends'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
        ),
        body: ListView.separated(
          itemBuilder: (_, int index) => ListTile(
            title: Text(options[index]),
            leading: const Icon(Icons.accessibility),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () => {print(options[index])},
          ),
          //Este tipo de argumentos con guiones bajos se utilizan cuando no
          //se le quiere dar uso a los que vienen implícitos en el propio method.
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length,
        ));
  }
}
