import 'package:converter/main.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(title:const Text("Menu"),),
          Container(
            padding:const EdgeInsets.all(28),
            child:Column(children: [ 
              
             ],)
             
          )
         
        ],
      ),
    );
  }
}
