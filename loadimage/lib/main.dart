import 'package:flutter/material.dart';
import 'package:loadimage/urlimage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_const
    const materialApp = const MaterialApp(
      title: '',
      home: URLImage(),
    );
    return materialApp;
  }
}