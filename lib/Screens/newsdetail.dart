import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_holistic/Provider/newsprovider.dart';
import 'package:test_holistic/Widget/detailwidget.dart';
import 'package:test_holistic/Widget/widget.dart';
class Newsdetail extends StatelessWidget{
 const  Newsdetail({super.key ,  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("News Detail", style: TextStyle(fontSize: 20),),
          centerTitle: true,
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back)),
        ),
    body:  Consumer<NewsProvider>(
      builder: (context, provider, child) {
        final newsProvider = provider.newsModel?.news;
        if(newsProvider == null){
          return Center(child: CircularProgressIndicator());
        }else{
          return Container(
              child: Detailwidget(
                  img: provider.newsModel?.news[0]["urlToImage"],
                  title: provider.newsModel?.news[0]["title"],
                  description: provider.newsModel?.news[0]["description"]
              )

          );}
        }


    )
    );
  }
}