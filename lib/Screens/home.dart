import 'package:flutter/material.dart';
import 'package:test_holistic/Screens/newsscreen.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 300),
        child: Center(
          child: Column(
            children: [
              MaterialButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen(categoryName: "business"),));

              },child: Text("Business",style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),),

              MaterialButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen(categoryName: "entertainment"),));

              },child: Text("entertainment",style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),),

              MaterialButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen(categoryName: "health"),));

              },child: Text("health",style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),),

              MaterialButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen(categoryName: "sports"),));

              },child: Text("sports",style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),),
            ],
          ),
        ),
      ),
    );
  }
}
