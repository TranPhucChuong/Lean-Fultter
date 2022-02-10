

import 'package:flutter/material.dart';

class URLImage extends StatefulWidget {
  const URLImage({ Key? key }) : super(key: key);

  @override
  _URLImageState createState() => _URLImageState();
}

class _URLImageState extends State<URLImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Load URL Image in Flutter'),
      ),
      body: Container(),
    );
  }
}