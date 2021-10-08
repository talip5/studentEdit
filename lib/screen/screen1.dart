import 'package:flutter/material.dart';
import 'package:studentedit/models/student.dart';

class Screen1 extends StatefulWidget {

 //List<Student> studentx=[Student('Screen1',97)];
  List<Student> studentx=[Student('Screen1',86)];
  Screen1(List<Student> studentx){
    this.studentx=studentx;
  }
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  final _formKey=GlobalKey<FormState>();
  String formTitle='formTitle';

  Student record=Student('Kemal', 11);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Screen1'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      widget.studentx.add(record);
                    });
                  },
                  child:Text('Kayit')
              ),
              Text('Screen1'),
              Text(widget.studentx.last.number.toString()),
              Text(widget.studentx.length.toString()),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Ogrenci adi :',
                        hintText: 'Engin',
                      ),
                      validator: (value){
                        if(value==null || value.isEmpty){
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onSaved: (value){
                        record.firstName=value!;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Aldigi not:',
                        hintText: '65',
                      ),
                      validator: (value){
                        if(value==null || value.isEmpty){
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onSaved: (value){
                        record.number=int.parse(value!);
                      },
                    ),
                    ElevatedButton(
                        onPressed:(){
                      _formKey.currentState!.save();
                      print('Kayit');
                      print(record.firstName);
                      widget.studentx.add(record);
                      if(_formKey.currentState!.validate()){
                        print('validated');
                      }
                      Navigator.pop(context);
                    },
                        child:Text('Submit')
                    ),
                    Text(formTitle),
                  ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
