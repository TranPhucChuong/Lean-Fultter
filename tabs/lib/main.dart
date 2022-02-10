import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tabs/Tabs/tab1.dart';
import 'package:tabs/Tabs/tab2.dart';
import 'package:tabs/Tabs/tab3.dart';
import 'package:tabs/Tabs/tab4.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Drawer _buildDrawer(context){
      return Drawer(
        child: ListView(
          padding:  EdgeInsets.zero,
          children: [
            DrawerHeader(child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('images/img4.jpg',
                  width:80.0,
                  height:80.0,
                   fit: BoxFit.cover),
                  Text('Tran Phuc Chuong',
                  style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),),

                  Text('Software Engineer' , style: TextStyle(color: Colors.white))
              ]),
              
            ),
            decoration: const BoxDecoration(
                color: Colors.blue
              ),
            ),
            const ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            const ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            const Divider(
              color: Colors.black45,
              indent:16.0
            ),
            const ListTile(
            
              title: Text('About us'),
            ),
            const ListTile(
             
              title: Text('Privacy'),
            ),
          ],
        ),
      );
    };

    final tabsController = DefaultTabController(
      length: 4, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Ninja Konoha'),
          bottom: const TabBar(
            indicatorColor: Colors.red,
            indicatorWeight: 2.0,
            tabs: [
              Tab(icon: Icon(Icons.home),text: "Home",),
              Tab(icon: Icon(Icons.info),text: "Info",),
              Tab(icon: Icon(Icons.image),text: "Image"),
              Tab(icon: Icon(Icons.more),text: "More"),
            
          ]),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: const TabBarView(children: [
          Tab1(),
          Tab2(),
          Tab3(),
          Tab4(),
        ]),
        drawer: _buildDrawer(context),
        ),

    );
    
SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Tabs example',
      home: tabsController,

    );
  }
}