import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        padding: const EdgeInsets.all(25),
        mainAxisSpacing: 25,
        crossAxisSpacing: 25,
        children: [
          Image.network('https://picsum.photos/400'),
          Image.network('https://picsum.photos/400'),
          Image.network('https://picsum.photos/400'),
          Image.network('https://picsum.photos/400'),
        ],
      ),
    );
  }
}
