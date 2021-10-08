import 'package:flutter/material.dart';
import 'package:studentedit/models/student.dart';
import 'package:studentedit/models/studentNew.dart';
import 'package:studentedit/screen/screen1.dart';


void main() {
  runApp(MaterialApp(
    title: 'Edit',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
   Home({Key? key}) : super(key: key);

  Student studentFirstName=Student.firstName('Kemal',35);
  Student studentGrade=Student.grade();
  Student student1=Student('veli',45);

   List<Student> student=[Student('Bekir35',35),Student('Demir75',75)];

  StudentNew studentNew=StudentNew();
  int index1=0;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text('Edit'),
            Expanded(
              child: ListView.builder(
                itemCount:widget.student.length,
                  itemBuilder: (BuildContext context,int index){
                  return ListTile(
                    title: Text(widget.student[index].firstName),
                    subtitle: Text(widget.student[index].number.toString()),
                    onTap: (){
                     widget.index1=index;
                    },
                  );
                  }),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: (){
                  print('Edit');
                  //print(widget.studentFirstName.firstName);
                  print(widget.studentGrade.number);
                 //Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen(widget.student[widget.index1])));
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen1(widget.student))).then((value) => setState((){}));
                },
                child: Text('Edit')
            ),
            /*Text(widget.student.message35),
            widget.student.textWidget,
            Text(widget.studentNew.name),
            widget.studentNew.textYalova,*/
          ],
        ),
      ),
    );
  }
}
