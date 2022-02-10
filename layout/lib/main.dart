import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: const Text('Hakate KaKashi', style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18.0) )),
              Text('Kakashi Hatake is a jonin of the Hidden Leaf Village and the leader of Team 7.'
              , style: TextStyle(color: Colors.grey[600],fontSize:18.0)
               )
            ]
          )),
            const Icon(Icons.favorite,color: Colors.red),
            const Text(' 999', style: TextStyle(fontSize: 16.0)),
        ],
      )
    );
    // ignore: unused_element
    Widget buidButton(IconData icon, String buttonTitle){
      const Color tintColor = Colors.blueGrey;
      return Column(
        children: [
          Icon(icon,color:tintColor),
          Container(
            margin: const EdgeInsets.only(top:6.0),
            child: Text(buttonTitle, style: const TextStyle(fontSize:16.0,fontWeight:FontWeight.w600,color:tintColor))
          )
        ],
      );
    }
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buidButton(Icons.home,"Home"),
          buidButton(Icons.arrow_back,"Back"),
          buidButton(Icons.arrow_forward,"Next"),
          buidButton(Icons.share,"Share"),
      ]),
    );
    Widget bottomSection = Container(
      padding: const EdgeInsets.all(10.0),
      child:Text('''Konohagakure (木ノ葉隠れの里, Konohagakure no Sato; literally meaning "Village Hidden by Tree Leaves"), also known as "Village Hidden in the Leaves" or "Hidden Leaf Village" is the hidden village of the Land of Fire. As the village of one of the Five Great Shinobi Countries, Konohagakure has a Kage as its leader, known as the Hokage. On a mountain overlooking the village from the north exists the Hokage Monument which has the faces of all those who have taken the office of Hokage engraved on it.'''
      , style: TextStyle(color: Colors.grey[800],fontSize:16.0
      )
    ));
    return MaterialApp(
      title:"",
        theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),                                  
      home: Scaffold(appBar: AppBar(
        title: const Text('Njnja Konoha'),
      ),
      // ignore: prefer_const_constructors
      body: ListView(
        children: [
          Image.asset('images/hinh.jpg', fit: BoxFit.cover),
         titleSection,
         buttonSection,
         bottomSection,
        ],
      ),
      ),

    );
  }
}