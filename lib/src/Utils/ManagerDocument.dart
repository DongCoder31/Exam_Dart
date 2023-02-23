
import 'dart:ffi';

import 'package:untitled1/src/model/Human.dart';
import 'package:untitled1/src/model/Student.dart';
import 'package:untitled1/src/model/Teacher.dart';

import 'Validator.dart';



class managerHuman{
  List<Human> _list = [];

  managerHuman( listdocument);
  managerHuman.name1(this._list);

  List<Human> get list => _list;

  set list(List<Human> value) {
    _list = value;
  }

  get inputHuman{
    print("1. Input Student");
    print("2. Input Teacher");

    int i = 0;
    do{
      i = Validator.getInt("Enter input type");
    }
    while(i<1 || i>2);

    String type = "";
    switch(i){
      case 1:
        type = "student";
        break;
      case 2:
        type = "teacher";
        break;
    }

    String st = "How many $type do you want to input";
    int n = 0;

    do{
      n = Validator.getInt(st);
    }while(n <= 0);

    for(var j = 0; j < n; j++){
      switch(i){
        case 1:
          var   s = Student();
          s.inputStudent(_list);
          _list.add(s);
          break;
        case 2:
          var   t = Teacher();
          t.inputTeacher(_list);
          _list.add(t);
          break;
      }
    }
  }
  
  get showHuman{
    _list.forEach((Human) {
      if(Human is Student){
        Student s =  Human;
        print(s.toString());
      }else if(Human is Teacher){
        Teacher t = Human;
        print(t.toString());
      }
    });
  }
  get showStudent{
    _list.forEach((Human) {
      if(Human is Student){
        Student s =  Human;
        print(s.toString());
      }
    });
  }

  get showTeacher{
    _list.forEach((Human) {
      if(Human is Teacher){
        Teacher t = Human;
        print(t.toString());
      }
    });
  }

  get sortStudentByAlphabetically{
    List<Human> list1 = [];

    _list.forEach((element) {
      if (element is Student)
        list1.add(element);
    });
    list1.sort((a, b) {
      if(a.name.compareTo(b.name) > 0){
        return 1;

      }else  if(a.name.compareTo(b.name) < 0){
        return -1;

      }else{
        return 0;
      }

    });

    print("Sort student by Alphabetically.");
    list1.forEach((element) {
      print(element.toString());
    });

    list1.clear();

  }

  get sortTeachByAlphabetically{
    List<Human> list1 = [];

    _list.forEach((element) {
      if (element is Teacher)
        list1.add(element);
    });
    list1.sort((a, b) {
      if(a.name.compareTo(b.name) > 0){
        return 1;

      }else  if(a.name.compareTo(b.name) < 0){
        return -1;

      }else{
        return 0;
      }

    });

    print("Sort student by Alphabetically.");
    list1.forEach((element) {
      print(element.toString());
    });

    list1.clear();

  }

  void seachNameAndId(String index)  {
    var arr = [];
    for (Human d in _list) {
      if (d.name.toLowerCase().contains(index.toLowerCase()) || d.id == index ) {
       arr.add(d);
      }
    }
    arr.forEach(print);
  }

}