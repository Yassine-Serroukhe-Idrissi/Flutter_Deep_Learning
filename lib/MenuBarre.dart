import 'package:cnn_classification/WasteClassification.dart';
import 'package:cnn_classification/FashionMnist.dart';
import 'package:cnn_classification/main.dart';
import 'package:cnn_classification/myhomepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MenuBarre extends StatelessWidget {
  const MenuBarre({Key? key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightBlue,
      child: ListView(
        children: [const DrawerHeader(decoration: BoxDecoration(gradient: LinearGradient(colors:[Colors.blue,Color.fromARGB(255, 127, 212, 248)])),
          child:CircleAvatar(backgroundImage: AssetImage('assets/ai.jpg'),),
        ),
        Column(
          children: [
            ListTile(title: Text('Home'),leading: Icon(Icons.home),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => const MyApp(),));
            },),
            ExpansionTile(title: const Text('Chose algorithme'),leading: const Icon(Icons.settings),
            children: [
              ListTile(title: Text('Fashion Mnist'),leading: const Icon(CupertinoIcons.tags),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const FashionMnist()));
              } ,),
              ListTile(title: Text('Waste Classification'),leading: const Icon(CupertinoIcons.trash),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const WasteClasification()));
              } ,)
            ],)
          ],
        )
        ],
      ),
    );
  }
}