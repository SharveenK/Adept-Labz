import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Uint8List? profilePicData;
String userName = '';
String userEmail = '';
Future<void> getCameraMethod() async {
  ImagePicker picker = ImagePicker();
  final XFile? selectedicture =
      await picker.pickImage(source: ImageSource.camera, imageQuality: 20);
  if (selectedicture != null) {
    profilePicData = await selectedicture.readAsBytes();
  } else {
    return;
  }
}

Widget loadingMethod() {
  return const Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [CircularProgressIndicator(), Text('Loading')],
    ),
  );
}
