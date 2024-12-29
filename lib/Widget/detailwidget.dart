import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detailwidget extends StatelessWidget{
  const Detailwidget({required this.img , required this.title , required this.description});
  final String img;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
        
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(img),
                radius: 150,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10 , left: 10, right: 10),
              child: Text(title, style: TextStyle(fontSize: 25 , color: Colors.black , fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10 , left: 10, right: 10),
              child: Text(title, style: TextStyle(fontSize: 25 , color: Colors.red ),),
            )
          ],
        ),
      ),
    );
  }

}