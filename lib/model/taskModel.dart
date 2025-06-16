// ignore_for_file: public_member_api_docs, sort_constructors_first
class Taskmodel {
  final String taskName;
  bool isDone;
  Taskmodel({required this.taskName, this.isDone = false});

  Taskmodel copyWith({String? taskName, bool? isDone}) {
    return Taskmodel(
      taskName: taskName ?? this.taskName,
      isDone: isDone ?? this.isDone,
    );
  }
}
