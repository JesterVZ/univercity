import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:univercity_application/model/news_model.dart';

class NewsElement extends StatefulWidget{
  NewsElement({required this.newsModel, required this.open, required this.descr});
  NewsModel newsModel;
  ValueChanged<NewsModel> open;
  String descr;
  @override
  State<StatefulWidget> createState() => _NewsElement();
}

class _NewsElement extends State<NewsElement>{
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: GestureDetector(
        onTap: (){
          widget.open.call(widget.newsModel);
        },
        child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                )
          ]
        ),
        child: Column(
          children: [
            Image(image: NetworkImage(widget.newsModel.url)),
            Text(widget.newsModel.title, style: TextStyle(fontSize: 26)),
            Text(widget.descr, style: TextStyle(fontSize: 20, color: Colors.grey))
          ],
        ),
      ),
      ),
    );
  }

}