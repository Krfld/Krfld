import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Image.network(
                'https://picsum.photos/400',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: Container(color: Colors.black),
            ),
            GridView.count(
              crossAxisCount: 4,
              padding: const EdgeInsets.all(50),
              mainAxisSpacing: 50,
              crossAxisSpacing: 50,
              children: [
                for (int i = 0; i < 12; i++)
                  Material(
                    elevation: 25,
                    child: Image.network('https://picsum.photos/500'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
