import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:univercity_application/DI/locator.dart';
import 'package:univercity_application/bloc/main_bloc.dart';
import 'package:univercity_application/bloc/main_state.dart';
import 'package:url_launcher/url_launcher.dart';

import '../elements/bloc/bloc_screen.dart';

class TimeTable extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _TimeTable();
}

class _TimeTable extends State<TimeTable>{
  MainBloc? mainBloc;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    
    return BlocScreen<MainBloc, MainState>(
      bloc: mainBloc,
      listener: (context, state) => _listener(context, state),
      builder: (context, state) {
        return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(textAlign: TextAlign.center,"РАСПИСАНИЕ ОЧНОЙ И ОЧНО-ЗАОЧНОЙ ФОРМЫ ОБУЧЕНИЯ", style: TextStyle(fontSize: 28)),
          ),
          Expanded(
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                                    
                Column(
                  children: [
                    Text(textAlign: TextAlign.center,"Уважаемые преподаватели и студенты! Возможны изменения в расписании учебных занятий!", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                    Container(
                      child: Column(
                        children: [
                          Text(textAlign: TextAlign.center, "Расписание очной формы обучения для бакалавриата", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          
                          Table(
                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                            border: TableBorder.all(),
                            columnWidths: const <int, TableColumnWidth>{
                              0: FlexColumnWidth(),
                              1: FixedColumnWidth(100),
                            },
                            children: [
                              TableRow(
                                children: [
                                  const Text("Факультет социологии и журналистики:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/FSiJ_2021.xlsx', 'FSiJ_2021.xlsx');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                TableRow(
                                children: [
                                  const Text("Факультет юриспруденции:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/FYU_2021.xlsx', 'FYU_2021.xlsx');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                TableRow(
                                children: [
                                  const Text("Факультет экономики:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/FE_2021.xlsx', 'FE_2021.xlsx');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                TableRow(
                                children: [
                                  const Text("Факультет иностранных языков:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/FIYA_2021.xlsx', 'FIYA_2021.xlsx');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                TableRow(
                                children: [
                                  const Text("Факультет прикладной математики и информатики:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/FPMiI_2021.xlsx', 'FPMiI_2021.xlsx');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                TableRow(
                                children: [
                                  const Text("Факультет психологии и педагогики:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/FPiP_2021.xlsx', 'FPiP_2021.xlsx');
                                  }, child: const Text("Скачать"))
                                  
                                ])
                            ]
                            )
                            
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(textAlign: TextAlign.center, "Расписание очной формы обучения для магистратуры", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          Table(
                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                            border: TableBorder.all(),
                            columnWidths: const <int, TableColumnWidth>{
                              0: FlexColumnWidth(),
                              1: FixedColumnWidth(100),
                            },
                            children: [
                              TableRow(
                                children: [
                                  const Text("Магистратура 1 курс:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/Magistratura_1_kurs_2021.xlsx', 'Magistratura_1_kurs_2021.xlsx');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                TableRow(
                                children: [
                                  const Text("Магистратура 2 курс:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/Magistratura_2_kurs_2021.xlsx', 'Magistratura_2_kurs_2021.xlsx');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                
                            ]
                            )
                            
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(textAlign: TextAlign.center, "Расписание очно-заочной формы обучения для бакалавриата", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          Table(
                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                            border: TableBorder.all(),
                            columnWidths: const <int, TableColumnWidth>{
                              0: FlexColumnWidth(),
                              1: FixedColumnWidth(100),
                            },
                            children: [
                              TableRow(
                                children: [
                                  const Text("Очно-заочное отделение 1 курс:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/Ochno-zaochnoe_1_kurs_2021.xlsx', 'Ochno-zaochnoe_1_kurs_2021.xlsx');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                TableRow(
                                children: [
                                  const Text("Очно-заочное отделение 2 курс:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/Ochno-zaochnoe_2_kurs_2021.xlsx', 'Ochno-zaochnoe_2_kurs_2021.xlsx');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                TableRow(
                                children: [
                                  const Text("Очно-заочное отделение 3 курс:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/Ochno-zaochnoe_3_kurs_2021.xlsx', 'Ochno-zaochnoe_3_kurs_2021.xlsx');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                            ]
                            )
                            
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(textAlign: TextAlign.center, "Расписание очно-заочной формы обучения для магистратуры", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          Table(
                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                            border: TableBorder.all(),
                            columnWidths: const <int, TableColumnWidth>{
                              0: FlexColumnWidth(),
                              1: FixedColumnWidth(100),
                            },
                            children: [
                              TableRow(
                                children: [
                                  const Text("Очно-заочное отделение магистратура 1 курс:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/Ochno-zaochnoe_magistr_1_kurs_2021.xlsx', 'Ochno-zaochnoe_magistr_1_kurs_2021.xlsx');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                TableRow(
                                children: [
                                  const Text("Очно-заочное отделение магистратура 2 курс:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/Ochno-zaochnoe_magistr_2_kurs_2021.xlsx', 'Ochno-zaochnoe_magistr_2_kurs_2021.xlsx');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                            ]
                            )
                            
                        ],
                      ),
                    )
                  ],
                ),
              Visibility(
                      child: Center(
                          child: Container(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/loading.gif'),
                      )),
                      visible: isLoading)
                  ],
                )
              )))]),
    );
  
      }
    );
  }
  _listener(BuildContext context, MainState state) {
    isLoading = state.loading!;
    if(state.loading == true){
      return;
    }
    
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    mainBloc ??= locator.get<MainBloc>();
  }
}