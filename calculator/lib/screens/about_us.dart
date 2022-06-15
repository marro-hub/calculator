import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class AboutUs extends StatelessWidget {

   static const routeName='/about-us';

  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar:AppBar(title:const Text("Github")),
      
     drawer: const AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Card(
          child: Text("This is all about Us!!"),
        )
      
      
      ,)
    );
  }
}
