import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_holistic/Provider/newsprovider.dart';
import 'package:test_holistic/Widget/widget.dart';
class NewsScreen extends StatelessWidget{
  String categoryName;

   NewsScreen({super.key , required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("News Page", style: TextStyle(fontSize: 20 , fontWeight:FontWeight.bold ),),
    centerTitle: true,
        ),
     body:  Consumer<NewsProvider>(
        builder: (context, provider, child) {
         final newsProvider = provider.newsModel?.news;
         provider.fetchData(categoryName: categoryName);
          if(newsProvider == null){
              provider.fetchData(categoryName: categoryName);
              return Center(child: CircularProgressIndicator());
          }else{
            return ListView.builder(
              itemCount: newsProvider.length,
              itemBuilder: (context, index) {
                return NewsWidget(
                  img: newsProvider[index]["urlToImage"],
                  title: newsProvider[index]["title"],
                  description: newsProvider[index]["description"],
                );
              },
            );
          }
        },
    )
    );
  }
}