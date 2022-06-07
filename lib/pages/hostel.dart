import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HostelPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text("Общежитие", style: TextStyle(fontSize: 28)),
          ),
          Expanded(
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("При заселении при себе необходимо иметь следующие медицинские документы:", style: TextStyle(fontWeight: FontWeight.bold)),
                    
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text("• "),
                              Text("сертификат о прививках;"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text("• "),
                              Text("медицинскую справку формы № 086-у;"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text("• "),
                              Text("результат флюорографического исследования лёгких;"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text("• "),
                              Text("результаты исследования на ВИЧ, гепатиты, RV;"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text("• "),
                              Text("медицинский полис;"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text("• "),
                              Text("справка на физ. группу;"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text("• "),
                              Text("выписку из амбулаторной карты с \n уточненным диагнозом (основным и сопутствующим) \n – при наличии заболевания;"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text("• "),
                              Text("Сертификат о вакцинации против новой \n короновирусной инфекции COVID-19 (при наличии)."),
                            ],
                          ),
                        ],
                      ),
                    ),
                  Text("Студентам старших курсов при заселении необходимо предоставить:", style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text("• "),
                              Text("результат флюорографического исследования лёгких;"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text("• "),
                              Text("сертификат о вакцинации против новой короновирусной \n инфекции COVID-19 (при наличии);"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text("• "),
                              Text("справку на физ. группу"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}