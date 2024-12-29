import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_holistic/Screens/newsdetail.dart';

class NewsWidget extends StatelessWidget{
  const NewsWidget({required this.img , required this.title , required this.description});
  final String img;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start

        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Newsdetail(),));
            } ,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(img , width: 800,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title, style: TextStyle(fontSize: 20 , color: Colors.black , fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title, style: TextStyle(fontSize: 20 , color: Colors.red ),),
          )
        ],
      ),
    );
  }

}