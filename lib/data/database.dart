import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  // list of todo tasks
  List toDoList = [];

  // ref the box
  final _myBox = Hive.box('mybox');

  //run this method if this is the first time ever opening the app
  void createInitialData() {
    toDoList = [
      ["Hey", false],
      ["Thanks for using my app", false],
    ];
  }

  // load the data from the DB
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the DB
  void updateDB() {
    _myBox.put("TODOLIST", toDoList);
  }
}
