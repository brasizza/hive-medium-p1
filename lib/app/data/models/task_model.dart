class TaskModel {
  final int id;
  String title;
  String? description;
  String? tag;
  bool done;

  TaskModel({
    required this.id,
    required this.title,
    this.description,
    this.tag,
    this.done = false,
  });
}
