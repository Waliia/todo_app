import 'package:hive/hive.dart';

class ToDoDatabase {
  List todoList = [];

  final myBox = Hive.box('mybox');

  void createInitialData() {
    todoList = [
      ['Make a wish today', true],
      ['Done with the breakfast', false]
    ];
  }

  void loadData() {
    todoList = myBox.get('TODOLIST');
  }

  void updateDatabase() {
    myBox.put('TODOLIST', todoList);
  }
}
