import 'package:flutter/material.dart';

class Student{
  String firstName='Ali';
  int number=0;
  String id='123';
  String message='haber';
  String message1='';


  Student(String firstName,int number){
    this.firstName=firstName;
    this.number=number;
  }

  Student.firstName(String firstName,int number){
    this.firstName=firstName;
    this.number=number;
  }
  Student.widthId(String firstName,String id){
    this.firstName=firstName;
    this.id=id;
  }
  Student.grade(){
    this.number=35;
  }
  String get message35{
    this.message='haber3';
    message1=this.message;
    return message1;
  }
  Widget get textWidget{
    return Text('Text');
  }
}