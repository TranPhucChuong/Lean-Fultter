import 'package:flutter/material.dart';

class Tab3 extends StatelessWidget {
  const Tab3({ Key? key }) : super(key: key);

 
  @override
   Widget build(BuildContext context) {
    return  GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(12),//Where is this function ?
    );
  }
}
List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers = List<Container>.generate(numberOfTiles,
  (int index) {
    //index = 0, 1, 2,...
    final imageName = index < 0 ?
              './images/img0${index + 1}.jpg' : './images/img${index + 1}.jpg';
    return  Container(
      child:  Image.asset(
        imageName,
        fit: BoxFit.fill
      ),
    );
  });
  return containers;
}