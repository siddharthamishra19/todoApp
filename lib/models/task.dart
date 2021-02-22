class Task {
  final String taskName;
  bool isDone = false;

  Task({this.taskName});

  void toggleDone() {
    isDone = !isDone;
  }
}
