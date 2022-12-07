import 'package:flutter/material.dart';
import 'package:componentflutter/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              name: 'Un hermoso paisaje',
              imageUrl:
                  'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl:
                  'https://thumbs.dreamstime.com/b/sun-rays-mountain-landscape-5721010.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl:
                  'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png',
            )
          ]),
    );
  }
}
