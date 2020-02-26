import 'package:mobx/mobx.dart';
import 'package:mobx_learning/stores/models/todo.model.dart';

part 'todo.store.g.dart';

class TodoStore = _TodoStore with _$TodoStore;

abstract class _TodoStore with Store {
  @observable
  ObservableList<Todo> todos = ObservableList<Todo>();

  @action
  void add(Todo todo) {
    this.todos.add(todo);
  }
}
