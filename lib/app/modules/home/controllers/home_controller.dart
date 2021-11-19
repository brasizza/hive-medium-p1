import 'package:get/get.dart';
import 'package:hive_tutorial/app/data/models/task_model.dart';

class HomeController extends GetxController {
  final todoList = <TaskModel>[].obs;

  void fakeTodo() {
    todoList.add(
      TaskModel(
        id: 1,
        title: 'Random Title',
        description: 'Full description Here',
        done: false,
        tag: '#personal',
      ),
    );
  }

  void addTask({required String title, String? description, String? tag, required bool done}) {
    int id = DateTime.now().millisecond;
    final _task = TaskModel(id: id, title: title, description: description ?? '', tag: tag ?? '', done: done);
    todoList.add(_task);
  }

  void changeStatus(int index, bool newValue) {
    todoList[index].done = newValue;
    todoList.refresh();
  }

  void updateTask(TaskModel? todo, {required String title, String? description, String? tag, required bool done}) {
    int index = todoList.indexOf(todo);
    todoList[index].title = title;
    todoList[index].description = description;
    todoList[index].tag = tag;
    todoList[index].done = done;
    todoList.refresh();
  }
}
