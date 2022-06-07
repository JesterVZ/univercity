import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text("Библиотека", style: TextStyle(fontSize: 28)),
            ),
          ),
          Expanded(
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(textAlign: TextAlign.center, "Уважаемые читатели!", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(textAlign: TextAlign.center, "Представляем Вашему вниманию новые книги! С этими изданиями, полученными в дар, можно познакомиться в библиотеке МГГЭУ. Надеемся, что подаренные книги не только займут свое место на книжных полках, но и найдут своего читателя.", style: TextStyle(fontWeight: FontWeight.bold)),
                    Container(
                      child: Image(image: NetworkImage('http://www.mggeu.ru/wp-content/uploads/2021/12/image1-400x548.png')),
                    ),
                    Text('В учебнике изложена современная система адаптивного спорта и его основных видов: спорта лиц с поражением опорно-двигательного аппарата, спорта слепых  и спорта лиц с интеллектуальными нарушениями, составляющих содержание современных паралимпийских летних и зимних игр. В учебнике предложены современные подходы к обучению и воспитанию лиц с инвалидностью и ограниченными возможностями здоровья, концепция подготовки спортивного резерва в паралимпийских видах спорта.'),
                    Container(
                      child: Image(image: NetworkImage('http://www.mggeu.ru/wp-content/uploads/2021/12/image2-400x548.png')),
                    ),
                    Container(
                      child: Image(image: NetworkImage('http://www.mggeu.ru/wp-content/uploads/2021/12/image3-400x548.png')),
                    ),
                    Text("Платонов В.Н. Основы подготовки спортсменов в олимпийском спорте. Настольная книга тренера: в 2 т.  / В.Н. Платонов. — М.: ПРИНТЛЕТО, 2021"),
                    Text("В учебнике дана характеристика системы спортивных соревнований, задач, средств и методов спортивной подготовки, рассмотрены принципы , лежащие в основе рационального построения процесса спортивного совершенствования. Показана роль различных внетренировочных факторов на эффективность тренировочной и соревновательной деятельности. Большое внимание уделено проблеме травматизма и перетренированности в спорте."),
                    Text("Библиотека МГГЭУ проводит для студентов и преподавателей «Консультационный час Библиотеки» по работе с электронно-библиотечными системами (ЭБС) и базами данных. Поможем пройти регистрацию в ЭБС, восстановить или изменить пароль, найти нужный документ. Расскажем,  как работать с текстом документа, использовать закладки и цитаты. В режиме онлайн, ответим на все интересующие Вас вопросы.", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                  
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