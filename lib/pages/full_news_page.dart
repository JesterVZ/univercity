import 'package:flutter/cupertino.dart';

class FillNewsPage extends StatelessWidget{
  String title;
  String text;
  String url;
  FillNewsPage({required this.title, required this.text, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20),
    child: SingleChildScrollView(
      child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Text(title, style: TextStyle(fontSize: 36)),
        ),
        Text(text, style: TextStyle(fontSize: 20)),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Image(image: NetworkImage(url)),
        )
      ],
    ),
    ));
  }
}