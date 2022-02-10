import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var card = Card(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const ListTile(
            leading: Icon(Icons.account_box, color: Colors.blue,size: 26),
            title: Text('Tran Phuc Chuong'),
            subtitle: Text('Software Engineer',style: TextStyle(fontWeight: FontWeight.w400),),
          ),
          const Divider(color: Colors.blue, indent: 16.0,),
        
          const ListTile(
            leading: Icon(Icons.email, color: Colors.blue,size: 26),
            title: Text('chuong.software@gmail.com'),
         
          ),
           const ListTile(
            leading: Icon(Icons.phone, color: Colors.blue,size: 26),
            title: Text('+84.123.456.789'),
         
          ),
         
        ],
      ),
    );
    final sizeBox = Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        height:220,
        child: card,
      ),
    );
    final center = Center(
      child: sizeBox,
    );
    return MaterialApp(
      title:'',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card'),
        ),
      body: center,
      ),
      
    );
  }
}