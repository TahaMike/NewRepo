class ToDo {
  String? id;
  String? todoText;
  bool isDone = false;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '1', todoText: 'jiji', isDone: true),
      ToDo(id: '2', todoText: 'hello', isDone: false),
      ToDo(id: '3', todoText: 'Bye', isDone: true),
      ToDo(id: '4', todoText: 'Brwd', isDone: false),
      ToDo(id: '5', todoText: 'fsfrew', isDone: false),
      ToDo(id: '6', todoText: 'sdnfd', isDone: false),
      ToDo(id: '7', todoText: 'hhii', isDone: true),
    ];
  }
}
