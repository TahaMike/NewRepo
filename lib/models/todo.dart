class ToDo {
  String? todoText;
  bool isDone;

  ToDo({
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(todoText: 'jiji', isDone: true),
      ToDo(todoText: 'hello', isDone: false),
      ToDo(todoText: 'Bye', isDone: true),
      ToDo(todoText: 'Brwd', isDone: false),
      ToDo(todoText: 'fsfrew', isDone: false),
      ToDo(todoText: 'sdnfd', isDone: false),
      ToDo(todoText: 'hhii', isDone: true),
    ];
  }
}
