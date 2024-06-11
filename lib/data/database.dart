import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  //references my box
  
  List toDoList = [];
  final _myBox = Hive.box('mybox');

// run this if it is first time ever opening app
  void createInitialData(){
    toDoList = [
      ["Create Task By Clicking Bottom Right Button", false],
      ["Delete Tasks By Swiping", false],
    ];
  }
  // load data
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }
  // Update database
  void uptateDataBase(){
    _myBox.put("TODOLIST", toDoList);

  }
}