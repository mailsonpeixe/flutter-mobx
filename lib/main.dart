import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_learning/stores/todo.store.dart';
import 'package:mobx_learning/todo.page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<TodoStore>.value(value: TodoStore())],
      child: MaterialApp(
        title: 'Mobx In Action',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todoStore = Provider.of<TodoStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) {
            return Text(todoStore.todos.length.toString());
          },
        ),
      ),
      body: Container(
        child: Observer(
            builder: (_) => ListView.builder(
                itemCount: todoStore.todos.length,
                itemBuilder: (context, index) {
                  var todo = todoStore.todos[index];
                  return Text(todo.title);
                })),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TodoPageEdit()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
