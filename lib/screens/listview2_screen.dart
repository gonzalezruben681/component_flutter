import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);
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
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) => ListTile(
                  leading: Icon(Icons.access_time_sharp),
                  title: Text(options[index]),
                  trailing: const Icon(Icons.arrow_forward_ios_sharp),
                  onTap: () {
                    final game = options[index];
                    print(game);
                  },), 
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
