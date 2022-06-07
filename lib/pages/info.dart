import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Text(textAlign: TextAlign.center,"ФАКУЛЬТЕТ ЦИФРОВЫХ ТЕХНОЛОГИЙ И КИБЕРБЕЗОПАСНОСТИ", style: TextStyle(fontSize: 28)),
          ),
          Expanded(
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
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
                        children: const [
                          Text("Контакты"),
                          Text("107150, г. Москва, ул. Лосиноостровская, 49."),
                          Text("E-mail:  Sakharchuk@mggeu.ru"),
                          Text("Тел: 8(499)160-92-00 (доб.2010)")
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Table(
                        border: TableBorder.all(),
                        columnWidths: const <int, TableColumnWidth>{
                          0: FixedColumnWidth(120),
                          1: FlexColumnWidth(),
                          2: FixedColumnWidth(100),
                        },
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: const [
                          TableRow(
                            children: [
                            Text("Направление "),
                            Text("Профили/направленность программы"),
                            Text("квалификация")
                          ]),
                          TableRow(
                            children: [
                            Text("01.03.02 Прикладная математика и информатика"),
                            Text("— Прикладная математика и информационные технологии;\n — Вычислительная математика и информационные системы"),
                            Text("Бакалавр")
                          ]),
                          TableRow(
                            children: [
                            Text("09.03.01 Информатика и вычислительная техника"),
                            Text("— Программное обеспечение вычислительной техники и информационных систем"),
                            Text("Бакалавр")
                          ]),
                          TableRow(
                            children: [
                            Text("09.03.03 Прикладная информатика"),
                            Text("— Прикладная информатика в менеджменте; \n — Прикладная информатика в биоинформационных технологиях"),
                            Text("Бакалавр")
                          ]),
                          TableRow(
                            children: [
                            Text("01.03.02 Прикладная математика и информатика"),
                            Text("Математическое и программное обеспечение информационных систем в прикладных областях"),
                            Text("Магистр")
                          ]),
                          TableRow(
                            children: [
                            Text("09.04.03 Прикладная информатика"),
                            Text("Интеллектуальные биоинформационные технологии"),
                            Text("Магистр")
                          ])
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text("По окончании обучения выпускники получают диплом государственного образца."),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const Text("Структура факультета", style: TextStyle(fontWeight: FontWeight.bold)),
                          Row(
                            children: const [
                              Text("• "),
                              Text("Кафедра цифровых технологий"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text("• "),
                              Text("Кафедра прикладной математики"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text("• "),
                              Text("Лаборатория функциональных \n реабилитационных технологий"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text("• "),
                              Text("Исследовательская лаборатория \n человеко-машинных интерфейсов и коммуникации"),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}