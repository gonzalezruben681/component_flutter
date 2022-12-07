import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Avatars'), actions: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          child: CircleAvatar(
            child: Text('SL'),
            backgroundColor: Colors.indigo[900],
          ),
        )
      ]),
      body: Center(
          child: CircleAvatar(
        maxRadius: 100,
        backgroundImage: NetworkImage(
            'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png'),
      )),
    );
  }
}
