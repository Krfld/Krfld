import 'package:firebase_storage/firebase_storage.dart';

class Storage {
  static final _storageRef = FirebaseStorage.instance.ref();

  static Future<String> getURL(String file, {String path = ''}) async =>
      await _storageRef.child(path).child(file).getDownloadURL();
}
