import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../DI/locator.dart';
import '../bloc/main_bloc.dart';
import '../bloc/main_state.dart';
import '../elements/bloc/bloc_screen.dart';

class HostelPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HostelPage();
}

class _HostelPage extends State<HostelPage>{
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
                      margin: EdgeInsets.only(top: 10, bottom: 10),
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
                    margin: EdgeInsets.only(top: 10, bottom: 10),
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
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text("Примечание: студенты — иностранные граждане допускаются к учебному процессу после представления результатов обследования на COVID-19 методом ПЦР, а также всех медицинских заключений, включая сертификаты профилактических прививок, с нотариально заверенным переводом на русский язык.", style: TextStyle(fontWeight: FontWeight.bold)),

                    ),
                    
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
                                  const Text("Приказ №389 от 29.06.18 «О стоимости проживания абитуриентов в общежитии МГГЭУ»:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/2018/07/prikaz-389-ot-29.06.18.pdf', 'prikaz-389-ot-29.06.18.pdf');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                TableRow(
                                children: [
                                  const Text("Приказ №525 от 28.08.2020 г. «О предоставлении жилого помещения в студенческом общежитии МГГЭУ»:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/2020/08/Prikaz-525-ot-28.08.2020.pdf', 'Prikaz-525-ot-28.08.2020.pdf');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                TableRow(
                                children: [
                                  const Text("Приказ №526 от 28.08.2020 «О стоимости проживания в общежитии МГГЭУ»:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/2020/08/Prikaz-526-ot-28.08.2020.pdf', 'Prikaz-526-ot-28.08.2020.pdf');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                TableRow(
                                children: [
                                  const Text("Договор найма жилого помещения в общежитии МГГЭУ:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/2021/09/Dogovor-najma-zhilogo-pomeshheniya-v-obshhezhitii-2021g.pdf', 'Dogovor-najma-zhilogo-pomeshheniya-v-obshhezhitii-2021g.pdf');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                TableRow(
                                children: [
                                  const Text("Правила внутреннего распорядка студенческого общежития МГГЭУ:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/2019/08/Pravila-vnutrennego-rasporyadka-studencheskogo-obshhezhitiya-MGGEU.pdf', 'Pravila-vnutrennego-rasporyadka-studencheskogo-obshhezhitiya-MGGEU.pdf');
                                  }, child: const Text("Скачать"))
                                  
                                ]),
                                TableRow(
                                children: [
                                  const Text("Положение о студенческом общежитии:"),
                                  GestureDetector(onTap: (){
                                    mainBloc!.download('http://www.mggeu.ru/wp-content/uploads/2019/08/Polozhenie-o-studencheskom-obshhezhitii.pdf', 'Polozhenie-o-studencheskom-obshhezhitii.pdf');
                                  }, child: const Text("Скачать"))
                                  
                                ])
                            ]
                            ),
                            Container(margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text("В первоочередном порядке места в общежитии предоставляются льготным категориям граждан, обучающимся на местах, финансируемых из средств федерального бюджета. Общежитие предоставляется иногородним студентам и аспирантам очной (дневной) формы обучения на весь период обучения при наличии мест. Иногородним студентам, аспирантам заочной формы обучения на период прохождения промежуточной и итоговой аттестации общежитие предоставляется при наличии мест. МГГЭУ стремится обеспечить всех иногородних студентов, нуждающихся в жилье, общежитием. Общежитие рассчитано для проживания 468 человек.Общежитие МГГЭУ, расположенное по адресу: г. Москва, ул. Лосиноостровская, д. 49, представляет собой комплекс из двух четырехэтажных зданий соединенных между собой теплым переходом со столовой и объединенных с административным корпусом, что создает условия для безбарьерной среды проживания и обучения студентов с ограниченными возможностями здоровья. За последние годы общежитие претерпело значительные изменения в лучшую сторону. Был проведен ремонт фасадов корпусов, большинства жилых комнат, мест общего пользования, проведена замена старых окон на современные стеклопакеты. Общежитие адаптировано для проживания лиц с ограниченными возможностями здоровья, и, следовательно, оборудовано лифтами, поручнями и пандусами. Большое внимание уделяется безопасности проживающих, в связи с чем проведены работы по замене проводки, установлено противопожарное оборудование, система оповещения и система «Берг» для экстренной эвакуации с верхних этажей.")

                            ),
                            Container(
                              child: Image(image: NetworkImage('http://www.mggeu.ru/wp-content/uploads/2019/03/MyCollages-2.jpg')),
                            )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  
      });
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