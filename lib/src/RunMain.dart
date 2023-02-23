import 'package:untitled1/src/Utils/ManagerDocument.dart';
import 'package:untitled1/src/Utils/MenuUtils.dart';
import 'package:untitled1/src/model/Human.dart';

import 'Utils/Validator.dart';

void main(){
  final List<Human> listdoc = [];
  final managerHuman mn = managerHuman.name1(listdoc);
  int i = 0;
  String? index = "";

  while(true) {
    MenuUtil.printMenu();
    do {
      i = Validator.getInt("Choice: ");
      if ((i < 1) || (i > 7))
        print("Enter a number from 1 to 7");
    } while ((i < 1) || (i > 7));

    switch (i) {
      case 1:
        mn.inputHuman(listdoc);
        break;
      case 2:
        mn.showHuman;
        break;
      case 3:
        mn.showTeacher;
        break;
      case 4:
        mn.showTeacher;
        break;
      case 5:
         index = Validator.getString("Enter dd and name: ");
        mn.seachNameAndId(index);
        break;
      case 6:
        mn.sortStudentByAlphabetically;
        break;
      case 7:
        mn.sortTeachByAlphabetically;
        break;
    }
    if(i > 7){
      break;
    }
  }
}