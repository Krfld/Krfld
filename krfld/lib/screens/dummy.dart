import 'package:flutter/material.dart';
import 'package:krfld/services/storage.dart';
import 'package:krfld/utilities/print.dart';

class Dummy extends StatelessWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
            future: Storage.getURL('IMG_20220828_204555_10_028.jpg'),
            builder: (context, snapshot) {
              print(snapshot.data, prefix: 'URL');
              return snapshot.connectionState == ConnectionState.waiting
                  ? const CircularProgressIndicator()
                  : Image.network(snapshot.data.toString());
            },
          ),
        ],
      ),
    );
  }
}
