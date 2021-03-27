import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePicker extends StatefulWidget {
  @override
  _ProfilePickerState createState() => _ProfilePickerState();
}

class _ProfilePickerState extends State<ProfilePicker> {
  File _image;
  final picker = ImagePicker();
  Future _getimage() async {
    final _pickedimage = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(_pickedimage.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: Colors.greenAccent,
        radius: 60,
        child: FadeInImage(placeholder: null, image: FileImage(_image)),
        //_image != null ? FileImage(_image) : null),
      ),
      onTap: _getimage,
    );
  }
}
