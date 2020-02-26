// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoStore on _TodoStore, Store {
  final _$todosAtom = Atom(name: '_TodoStore.todos');

  @override
  ObservableList<Todo> get todos {
    _$todosAtom.context.enforceReadPolicy(_$todosAtom);
    _$todosAtom.reportObserved();
    return super.todos;
  }

  @override
  set todos(ObservableList<Todo> value) {
    _$todosAtom.context.conditionallyRunInAction(() {
      super.todos = value;
      _$todosAtom.reportChanged();
    }, _$todosAtom, name: '${_$todosAtom.name}_set');
  }

  final _$_TodoStoreActionController = ActionController(name: '_TodoStore');

  @override
  void add(Todo todo) {
    final _$actionInfo = _$_TodoStoreActionController.startAction();
    try {
      return super.add(todo);
    } finally {
      _$_TodoStoreActionController.endAction(_$actionInfo);
    }
  }
}
