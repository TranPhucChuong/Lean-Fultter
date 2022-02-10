import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tabs/Tabs/data.dart';
import 'ninja.dart';
class Tab4 extends StatelessWidget {
  const Tab4({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

  
  List<GestureDetector> _buidListItemsNinja(){
    int index = 0;
    return ninjas.map((ninja){
      var container = Container(
        decoration: index % 2 == 0?
         const BoxDecoration(color: Color.fromARGB(255, 188, 229, 235)):
        const BoxDecoration(
            color: Color(0xFF7ec0ee)
        ),
        
        child: Row(
          children: [
            Container(
              
              margin: const EdgeInsets.all(10.0),
              child: CachedNetworkImage(

                imageUrl: ninja.ImageURL,
                width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,
                )
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    ninja.NinjaName,
                    style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0,color: Colors.black),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    ninja.Description,
                    style: const TextStyle(fontWeight: FontWeight.normal,fontSize: 10.0,color: Colors.black),
                  ),
                )
              ],
            ),
          ],
        ),
      );
       index = index + 1;
       final gestureDetector = GestureDetector(
         child:container,
         onTap: (){
           // ignore: avoid_print
           print("Tap ${ninja.NinjaName}");
           
         },
       );
      return gestureDetector;
    }).toList();
  }; 
    return ListView(
     children: _buidListItemsNinja(),
    );
  }
}