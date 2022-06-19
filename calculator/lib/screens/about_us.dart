import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';
import '../widgets/app_drawer.dart';

class AboutUs extends StatelessWidget {

   static const routeName='/about-us';

  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar:AppBar(title:const Text("About Us")),
      
     drawer: const AppDrawer(),
       body: Center(
            child: Container(
              
                child: Text(
              'Calculator ver 1.0.0\n  \n @2022 All Rights Reserved \n \n Developed by WKU students. \n ',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              
            )),
          )
    );
  }
}
