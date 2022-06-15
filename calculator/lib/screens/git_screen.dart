import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class FavItemsScreen extends StatelessWidget {

   static const routeName='/fav-items';

  const FavItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar:AppBar(title:const Text("Github")),
      
     drawer: const AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Card(
          child: Text("This is our git hub Url"),
        )
      
      
      ,)
    );
  }
}
