import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:univercity_application/pages/library.dart';

import '../elements/news_element.dart';
import 'hostel.dart';

class More extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text( "Ещё", style: TextStyle(fontSize: 28)),
            ),
          ),
          Expanded(
            child: Padding(padding: EdgeInsets.all(20),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 4, 133, 0)
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HostelPage()));
                        },
                        child: Text("Общежитие", ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 4, 133, 0)
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LibraryPage()));
                        },
                        child: Text("Библиотека", ),
                      ),
                    )
                  ],
                ),
              ),
            ),)
          )
        ],
      ),
    );
  }
}