import 'package:converter/main.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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
              InkWell(
                onTap: () => {
                  Navigator.of(context).pushNamed('/')
                },
                child: Row(
                          children: 
                          const [Icon(Icons.home), 
                          SizedBox(width: 15, height: 60,), 
                          Text('Home')],
                           ),
              ),
              const Divider(),
               InkWell(
                onTap: () => {
                  Navigator.of(context).pushNamed('/contact-us')
                },
                child: Row(
                          children: 
                          const [Icon(Icons.phone), 
                          SizedBox(width: 15, height: 60,), 
                          Text('Contact Us')],
                           ),
              ),
              InkWell(
               onTap: () => {
                 Navigator.of(context).pushNamed('/about-us')
               },
               child: Row(
                 children: const [
                   Icon(Icons.emoji_emotions), 
                   SizedBox(width: 15, height: 60,), 
                   Text('About Us')],
               ),
             ),
            
             ],)
             
          )
         
        ],
      ),
    );
  }
}
