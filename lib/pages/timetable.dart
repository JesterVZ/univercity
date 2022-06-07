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
                                    //launchUrl(Uri.parse('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/FSiJ_2021.xlsx'));
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/raspisanie/ochnoe/FSiJ_2021.xlsx', 'FSiJ_2021.xlsx');
                                  }, child: const Text("Скачать"))
                                  
                                ])
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