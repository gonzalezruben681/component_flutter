import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({Key? key}) : super(key: key);
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 1'),
      ),
      body: ListView(children: [
        ...options
            .map((game) => ListTile(
                  leading: Icon(Icons.access_time_sharp),
                  title: Text(game),
                  trailing: const Icon(Icons.arrow_forward_ios_sharp),
                ))
            .toList(),
      ]),
    );
  }
}
