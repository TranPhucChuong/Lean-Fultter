import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  const Tab1({ Key? key }) : super(key: key);

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
    
    Widget bottomSection = Container(
      padding: const EdgeInsets.all(10.0),
      child:Text('''Konohagakure (木ノ葉隠れの里, Konohagakure no Sato; literally meaning "Village Hidden by Tree Leaves"), also known as "Village Hidden in the Leaves" or "Hidden Leaf Village" is the hidden village of the Land of Fire. As the village of one of the Five Great Shinobi Countries, Konohagakure has a Kage as its leader, known as the Hokage. On a mountain overlooking the village from the north exists the Hokage Monument which has the faces of all those who have taken the office of Hokage engraved on it.'''
      , style: TextStyle(color: Colors.grey[800],fontSize:16.0
      )
    ));
    return Container(
     
      child: ListView(
      children: [
          Image.asset('./images/img0.jpg', fit: BoxFit.cover),
         titleSection,
        
         bottomSection,
        ],
      ),
    );
  }
}