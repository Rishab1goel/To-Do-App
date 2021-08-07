import 'package:flutter/cupertino.dart';
import 'todo.dart';


class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(
      createdTime: DateTime.now(),
      title: 'Buy Food ',
      description: '''- Eggs
- Milk
- Bread
- Water''', id: '1',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Plan family trip to Delhi',
      description: '''- Rent some hotels
- Rent a car
- Pack suitcase''', id: '2',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Walk the Dog ', id: '3'
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Plan birthday party', id: '4'
    ),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
}
