import 'package:flutter/material.dart';
import 'package:mobx_learning/stores/models/todo.model.dart';
import 'package:mobx_learning/stores/todo.store.dart';
import 'package:provider/provider.dart';

class TodoPageEdit extends StatelessWidget {
  TextEditingController id = new TextEditingController();
  TextEditingController title = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final todoStore = Provider.of<TodoStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina de Edição"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: id,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              controller: title,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: RaisedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false
                    // otherwise.

                    // If the form is valid, display a Snackbar.
                    /*Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));*/
                    var todo = new Todo(
                        id: int.parse(id.text),
                        title: this.title.text,
                        done: true);
                    todoStore.add(todo);
                    Navigator.pop(context);
                  },
                  child: Text('Submit'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
