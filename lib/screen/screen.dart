import 'package:flutter/material.dart';
import 'package:studentedit/main.dart';
import 'package:studentedit/models/student.dart';
import 'package:studentedit/models/studentNew.dart';

class Screen extends StatefulWidget {

  List<Student> student=[Student('',0)];

  Screen(List<Student> student){
    this.student=student;
  }
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

Student studentNew=Student('Alper',99);
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Screen'),
            Text(widget.student.last.firstName),
            ElevatedButton(
                onPressed: (){
                 print('Screen');
                 widget.student.add(studentNew);
                  print(widget.student.length);
                 //Navigator.push(context,MaterialPageRoute(builder: (context)=>Home())).then((value) => setState((){}));
                  Navigator.pop(context);
                  },
                child: Text('Edit')
            ),
          ],
        ),
      ),
    );
  }
}
